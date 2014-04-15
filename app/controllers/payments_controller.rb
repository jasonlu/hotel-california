class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    #puts "user+id:"
    #puts session[:user_id]
    #if current_user.payment.nil?
      @payment = current_user.build_payment 
      @payment.billing_address = @payment.build_billing_address
      @payment.billing_address[:receiver] = current_user.guest.fullname.upcase
    #else
      #@payment = current_user.payment
    #end
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    # checkin_date = session[:booking][:checkin]
    # checkout_date = session[:booking][:checkout]
    # room_type_id = session[:booking][:room_type_id]
    checkin_date = params[:booking][:checkin]
    checkout_date = params[:booking][:checkout]
    room_type_id = params[:booking][:room_type]

    days = (checkout_date.to_date - checkin_date.to_date).to_i
    
    #@room = Room.where("room_type_id = ? AND (id NOT IN (?))", room_type_id, Booking.joins(:room_occupation).where("start_at >= ? OR end_at <= ?", checkin_date, checkout_date).select(:room_id) ).first
    #@room = Room.where("room_type_id = ?", room_type_id).first
    @room = Room.empty_rooms(checkin_date, checkout_date).where(:room_type_id => room_type_id).first
    
    if @room.nil?
      redirect_to :back, :alert => "No room avalible"
      return
    end
    
    Payment.transaction do
      visit_params = Hash.new()
      visit_params[:customer_id] = current_user.id
      visit_params[:should_checkin_at] = checkin_date
      visit_params[:should_checkout_at] = checkout_date
      visit_params[:rate] = @room.base_rate
      visit_params[:room_id] = @room.id
      visit_params[:days] = days

      @visit = Visit.new(visit_params)
      @visit.save

      date = checkin_date.to_date
      while(date < checkout_date.to_date)
        occupancy_params = Hash.new()
        occupancy_params[:date] = date
        occupancy_params[:room_id] = @room.id
        occupancy_params[:visit_id] = @visit.id
        @occupance = Occupancy.new(occupancy_params)
        @occupance.save
        date = date + 1.day
      end

      @payment = current_user.build_payment(payment_params)
      @payment.price = (@room.base_rate * days).to_f
      @payment.visit_id = @visit.id
      @payment.save
      
    end
    redirect_to payment_path(@payment)

  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:customer_id, :visit_id, :method, :credit_card_no, :paid, :paid_at, billing_address_attributes: [ :street1, :street2, :city, :state, :zip, :name_on_card ])
    end
end

class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  # GET /visits
  # GET /visits.json
  def index
    @visits = Visit.all
  end

  # GET /visits/1
  # GET /visits/1.json
  def show
  end

  # GET /visits/new
  def new
    checkin_date = params[:checkin]
    checkout_date = params[:checkout]
    if(checkin_date.blank? or checkout_date.blank?)
      flash[:error] = "Must specify Check-in date and Check-out date."
      redirect_to :back
      return
    end
    if(checkin_date.to_date >= checkout_date.to_date)
      flash[:error] = "Check-in date must less then Check-out date."
      redirect_to :back
      return
    end
    if(checkin_date.to_date <= DateTime.now or checkout_date.to_date <= DateTime.now)
      flash[:error] = "You cannot book a room in the past unless you have a time machine."
      redirect_to :back
      return
    end

    session[:booking] = Hash.new
    session[:booking][:checkin] = checkin_date
    session[:booking][:checkout] = checkout_date
    
    @rooms = Room.empty_rooms(checkin_date, checkout_date).group(:room_type_id)
    @visit = Visit.new
  end

  def guests_info
    session[:booking][:room_type_id] = params['room_type']
    unless current_user.nil?
      redirect_to new_payment_path(:checkin => params[:checkin], :checkout => params[:checkout], :room_type => params[:room_type])
    end
    @customer = Customer.new
    @customer.guest = Guest.new
    
    
  end


  # GET /visits/1/edit
  def edit
  end

  # POST /visits
  # POST /visits.json
  def create
    @visit = Visit.new(visit_params)

    respond_to do |format|
      if @visit.save
        format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @visit }
      else
        format.html { render action: 'new' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1
  # PATCH/PUT /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to @visit, notice: 'Visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1
  # DELETE /visits/1.json
  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to visits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_params
      params.require(:visit).permit(:customer_id, :people, :should_checkin_at, :should_checkout_at)
    end
end

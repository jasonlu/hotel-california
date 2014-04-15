class RoomOccupationsController < ApplicationController
  before_action :set_room_occupation, only: [:show, :edit, :update, :destroy]

  # GET /room_occupations
  # GET /room_occupations.json
  def index
    @room_occupations = RoomOccupation.all
  end

  # GET /room_occupations/1
  # GET /room_occupations/1.json
  def show
  end

  # GET /room_occupations/new
  def new
    @room_occupation = RoomOccupation.new
  end

  # GET /room_occupations/1/edit
  def edit
  end

  # POST /room_occupations
  # POST /room_occupations.json
  def create
    @room_occupation = RoomOccupation.new(room_occupation_params)

    respond_to do |format|
      if @room_occupation.save
        format.html { redirect_to @room_occupation, notice: 'Room occupation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @room_occupation }
      else
        format.html { render action: 'new' }
        format.json { render json: @room_occupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_occupations/1
  # PATCH/PUT /room_occupations/1.json
  def update
    respond_to do |format|
      if @room_occupation.update(room_occupation_params)
        format.html { redirect_to @room_occupation, notice: 'Room occupation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @room_occupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_occupations/1
  # DELETE /room_occupations/1.json
  def destroy
    @room_occupation.destroy
    respond_to do |format|
      format.html { redirect_to room_occupations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_occupation
      @room_occupation = RoomOccupation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_occupation_params
      params.require(:room_occupation).permit(:booking_id_id, :start_at, :end_at, :days)
    end
end

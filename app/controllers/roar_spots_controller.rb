class RoarSpotsController < ApplicationController
  before_action :set_roar_spot, only: [:show, :edit, :update, :destroy]

  # GET /roar_spots
  # GET /roar_spots.json
  def index
    @roar_spots = RoarSpot.all
  end

  # GET /roar_spots/1
  # GET /roar_spots/1.json
  def show
  end

  # GET /roar_spots/new
  def new
    @roar_spot = RoarSpot.new
  end

  # GET /roar_spots/1/edit
  def edit
  end

  # POST /roar_spots
  # POST /roar_spots.json
  def create
    @roar_spot = RoarSpot.new(roar_spot_params)

    respond_to do |format|
      if @roar_spot.save
        format.html { redirect_to @roar_spot, notice: 'Roar spot was successfully created.' }
        format.json { render :show, status: :created, location: @roar_spot }
      else
        format.html { render :new }
        format.json { render json: @roar_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roar_spots/1
  # PATCH/PUT /roar_spots/1.json
  def update
    respond_to do |format|
      if @roar_spot.update(roar_spot_params)
        format.html { redirect_to @roar_spot, notice: 'Roar spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @roar_spot }
      else
        format.html { render :edit }
        format.json { render json: @roar_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roar_spots/1
  # DELETE /roar_spots/1.json
  def destroy
    @roar_spot.destroy
    respond_to do |format|
      format.html { redirect_to roar_spots_url, notice: 'Roar spot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roar_spot
      @roar_spot = RoarSpot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roar_spot_params
      params.require(:roar_spot).permit(:name, :address, :phone, :website)
    end
end

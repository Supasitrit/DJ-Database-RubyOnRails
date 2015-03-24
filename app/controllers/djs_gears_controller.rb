class DjsGearsController < ApplicationController
  before_action :set_djs_gear, only: [:show, :edit, :update, :destroy]

  # GET /djs_gears
  # GET /djs_gears.json
  def index
    @djs_gears = DjsGear.all
  end

  # GET /djs_gears/1
  # GET /djs_gears/1.json
  def show
  end

  # GET /djs_gears/new
  def new
    @gears = Gear.all 
    @dj = Dj.find(params[:dj_id].to_i)
    @djs_gear = DjsGear.new
  end

  # GET /djs_gears/1/edit
  def edit
  end

  # POST /djs_gears
  # POST /djs_gears.json
  def create
    @djs_gear = DjsGear.new(djs_gear_params)

    respond_to do |format|
      if @djs_gear.save
        # raise "#{params}"
        format.html { redirect_to dj_path(id: @djs_gear.dj.id), notice: 'Djs gear was successfully created.' }
        format.json { render :show, status: :created, location: @djs_gear }
      else
        format.html { render :new }
        format.json { render json: @djs_gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /djs_gears/1
  # PATCH/PUT /djs_gears/1.json
  def update
    respond_to do |format|
      if @djs_gear.update(djs_gear_params)
        format.html { redirect_to @djs_gear, notice: 'Djs gear was successfully updated.' }
        format.json { render :show, status: :ok, location: @djs_gear }
      else
        format.html { render :edit }
        format.json { render json: @djs_gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /djs_gears/1
  # DELETE /djs_gears/1.json
  def destroy
    @djs_gear.destroy
    respond_to do |format|
      format.html { redirect_to djs_gears_url, notice: 'Djs gear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_djs_gear
      @djs_gear = DjsGear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def djs_gear_params
      params.require(:djs_gear).permit(:dj_id,:gear_id)
    end
end

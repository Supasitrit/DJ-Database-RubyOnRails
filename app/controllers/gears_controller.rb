class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  # GET /gears
  # GET /gears.json
  def index
    @gears = Gear.paginate(:page => params[:page], :per_page => 12)
  end

  # GET /gears/1
  # GET /gears/1.json
  def show
    @gears = Gear.all
  end

   def result
    if params[:search]
      @gears = Gear.search(params[:search]).order("created_at DESC")
    else
      @gears = Gear.order("created_at DESC")
    end
  end


  # GET /gears/new
  def new
    @gear = Gear.new
  end

  # GET /gears/1/edit
  def edit
    
  end

  def remove_photo
    @gear = Gear.find(params[:id])
    @gear.avatar = nil
    @gear.save
    redirect_to @gear, flash: { success: 'Gear profile photo has been removed.' }
  end

  # POST /gears
  # POST /gears.json
  def create
    @gear = Gear.new(gear_params)

    respond_to do |format|
      if @gear.save
        format.html { redirect_to @gear, notice: 'Gear was successfully created.' }
        format.json { render :show, status: :created, location: @gear }
      else
        format.html { render :new }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gears/1
  # PATCH/PUT /gears/1.json
  def update
    respond_to do |format|
      if @gear.update(gear_params)
        # raise "#{params}" 
        format.html { redirect_to @gear, notice: 'Gear was successfully updated.' }
        format.json { render :show, status: :ok, location: @gear }
      else
        format.html { render :edit }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gears/1
  # DELETE /gears/1.json
  def destroy
    @gear.destroy
    respond_to do |format|
      format.html { redirect_to gears_url, notice: 'Gear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear
      @gear = Gear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_params
      params.require(:gear).permit(:name, :description, :geartype_id, :dj_id, :avatar, :buylink, :geartype_name)
    end
end

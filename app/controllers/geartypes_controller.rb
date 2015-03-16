class GeartypesController < ApplicationController
  before_action :set_geartype, only: [:show, :edit, :update, :destroy]

  # GET /geartypes
  # GET /geartypes.json
  def index
    @geartypes = Geartype.all
  end

  # GET /geartypes/1
  # GET /geartypes/1.json
  def show
  end

  # GET /geartypes/new
  def new
    @geartype = Geartype.new
  end

  # GET /geartypes/1/edit
  def edit
  end

  # POST /geartypes
  # POST /geartypes.json
  def create
    @geartype = Geartype.new(geartype_params)

    respond_to do |format|
      if @geartype.save
        format.html { redirect_to @geartype, notice: 'Geartype was successfully created.' }
        format.json { render :show, status: :created, location: @geartype }
      else
        format.html { render :new }
        format.json { render json: @geartype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geartypes/1
  # PATCH/PUT /geartypes/1.json
  def update
    respond_to do |format|
      if @geartype.update(geartype_params)
        format.html { redirect_to @geartype, notice: 'Geartype was successfully updated.' }
        format.json { render :show, status: :ok, location: @geartype }
      else
        format.html { render :edit }
        format.json { render json: @geartype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geartypes/1
  # DELETE /geartypes/1.json
  def destroy
    @geartype.destroy
    respond_to do |format|
      format.html { redirect_to geartypes_url, notice: 'Geartype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geartype
      @geartype = Geartype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geartype_params
      # params[:geartype]
      params.require(:geartype).permit(:name)

    end
end

class DjsController < ApplicationController
  before_action :set_dj, only: [:show, :edit, :update, :destroy]

  # GET /djs
  # GET /djs.json
  def index
    # @djs = Dj.all
    # WillPaginate.per_page = 10
    # @djs = Dj.paginate(:page => params[:page])
    
    @djs = Dj.paginate(:page => params[:page], :per_page => 12)

    

  end
  # GET /djresult
  def result
    if params[:search]
      @djs = Dj.search(params[:search]).order("created_at DESC")
      @gears = Gear.search(params[:search]).order("created_at DESC")
    else
      @djs = Dj.order("created_at DESC")
    end
  end
  
  def resultall
    if params[:search]
      @djs = Dj.search(params[:search]).order("created_at DESC")
      @gears = Gear.search(params[:search]).order("created_at DESC")
    else
      @djs = Dj.order("created_at DESC")
    end
  end

  def remove_photo
    @dj = Dj.find(params[:id])
    @dj.avatar = nil
    @dj.save
    redirect_to @dj, flash: { success: 'DJ profile photo has been removed.' }
  end


  # GET /djs/1
  # GET /djs/1.json
  def show
    commontator_thread_show(@dj)
    @gears = Gear.all
  end

  # def djgear
  #   @gears = Gear.all 
  #   @dj = Dj.find(params[:dj_id].to_i)
  # end

  

  # GET /djs/new
  def new
    @dj = Dj.new
  end

  # GET /djs/1/edit
  def edit
  end

  # POST /djs
  # POST /djs.json
  def create
    @dj = Dj.new(dj_params)

    respond_to do |format|
      if @dj.save
        format.html { redirect_to @dj, notice: 'Dj was successfully created.' }
        format.json { render :show, status: :created, location: @dj }
      else
        format.html { render :new }
        format.json { render json: @dj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /djs/1
  # PATCH/PUT /djs/1.json
  def update
    respond_to do |format|
      if @dj.update(dj_params)
        format.html { redirect_to @dj, notice: 'Dj was successfully updated.' }
        format.json { render :show, status: :ok, location: @dj }
      else
        format.html { render :edit }
        format.json { render json: @dj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /djs/1
  # DELETE /djs/1.json
  def destroy
    @dj.destroy
    respond_to do |format|
      format.html { redirect_to djs_url, notice: 'Dj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dj
      @dj = Dj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dj_params
      params.require(:dj).permit(:name, :description, :genre, :avatar)
    end
end

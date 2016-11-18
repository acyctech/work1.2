class UrlfavsController < ApplicationController
  before_action :set_urlfav, only: [:show, :edit, :update, :destroy]

  # GET /urlfavs
  # GET /urlfavs.json
  def index
    @urlfavs = Urlfav.all
  end

  # GET /urlfavs/1
  # GET /urlfavs/1.json
  def show
  end

  # GET /urlfavs/new
  def new
    @urlfav = Urlfav.new
  end

  # GET /urlfavs/1/edit
  def edit
  end

  # POST /urlfavs
  # POST /urlfavs.json
  def create
    @urlfav = Urlfav.new(urlfav_params)

    respond_to do |format|
      if @urlfav.save
        format.html { redirect_to @urlfav, notice: 'Urlfav was successfully created.' }
        format.json { render :show, status: :created, location: @urlfav }
      else
        format.html { render :new }
        format.json { render json: @urlfav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urlfavs/1
  # PATCH/PUT /urlfavs/1.json
  def update
    respond_to do |format|
      if @urlfav.update(urlfav_params)
        format.html { redirect_to @urlfav, notice: 'Urlfav was successfully updated.' }
        format.json { render :show, status: :ok, location: @urlfav }
      else
        format.html { render :edit }
        format.json { render json: @urlfav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urlfavs/1
  # DELETE /urlfavs/1.json
  def destroy
    @urlfav.destroy
    respond_to do |format|
      format.html { redirect_to urlfavs_url, notice: 'Urlfav was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urlfav
      @urlfav = Urlfav.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urlfav_params
      params.require(:urlfav).permit(:url, :description)
    end
end

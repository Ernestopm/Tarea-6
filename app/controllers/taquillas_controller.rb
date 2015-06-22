class TaquillasController < ApplicationController
  before_action :set_taquilla, only: [:show, :edit, :update, :destroy]

  # GET /taquillas
  # GET /taquillas.json
  def index
    @taquillas = Taquilla.all
  end

  # GET /taquillas/1
  # GET /taquillas/1.json
  def show
  end

  # GET /taquillas/new
  def new
    @taquilla = Taquilla.new
  end

  # GET /taquillas/1/edit
  def edit
  end

  # POST /taquillas
  # POST /taquillas.json
  def create
    @taquilla = Taquilla.new(taquilla_params)

    respond_to do |format|
      if @taquilla.save
        format.html { redirect_to @taquilla, notice: 'Taquilla was successfully created.' }
        format.json { render :show, status: :created, location: @taquilla }
      else
        format.html { render :new }
        format.json { render json: @taquilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taquillas/1
  # PATCH/PUT /taquillas/1.json
  def update
    respond_to do |format|
      if @taquilla.update(taquilla_params)
        format.html { redirect_to @taquilla, notice: 'Taquilla was successfully updated.' }
        format.json { render :show, status: :ok, location: @taquilla }
      else
        format.html { render :edit }
        format.json { render json: @taquilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taquillas/1
  # DELETE /taquillas/1.json
  def destroy
    @taquilla.destroy
    respond_to do |format|
      format.html { redirect_to taquillas_url, notice: 'Taquilla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taquilla
      @taquilla = Taquilla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taquilla_params
      params.require(:taquilla).permit(:pelicula, :valoracion, :comentario)
    end
end

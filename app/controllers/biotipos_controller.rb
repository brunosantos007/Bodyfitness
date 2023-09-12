class BiotiposController < ApplicationController
  before_action :set_biotipo, only: %i[ show edit update destroy ]

  # GET /biotipos or /biotipos.json
  def index
    @biotipos = Biotipo.all
  end

  # GET /biotipos/1 or /biotipos/1.json
  def show
  end

  # GET /biotipos/new
  def new
    @biotipo = Biotipo.new
  end

  # GET /biotipos/1/edit
  def edit
  end

  # POST /biotipos or /biotipos.json
  def create
    @biotipo = Biotipo.new(biotipo_params)

    respond_to do |format|
      if @biotipo.save
        format.html { redirect_to biotipo_url(@biotipo), notice: "Biotipo was successfully created." }
        format.json { render :show, status: :created, location: @biotipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @biotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biotipos/1 or /biotipos/1.json
  def update
    respond_to do |format|
      if @biotipo.update(biotipo_params)
        format.html { redirect_to biotipo_url(@biotipo), notice: "Biotipo was successfully updated." }
        format.json { render :show, status: :ok, location: @biotipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @biotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biotipos/1 or /biotipos/1.json
  def destroy
    @biotipo.destroy

    respond_to do |format|
      format.html { redirect_to biotipos_url, notice: "Biotipo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biotipo
      @biotipo = Biotipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def biotipo_params
      params.require(:biotipo).permit(:biotipo)
    end
end

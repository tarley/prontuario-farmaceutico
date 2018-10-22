class SfcsController < ApplicationController
  before_action :authorize
  
  before_action :set_sfc, only: [:show, :edit, :update, :destroy]

  # GET /sfcs
  # GET /sfcs.json
  def index
    @sfcs = Sfc.all
  end

  # GET /sfcs/1
  # GET /sfcs/1.json
  def show
  end

  # GET /sfcs/new
  def new
    @sfc = Sfc.new
  end

  # GET /sfcs/1/edit
  def edit
  end

  # POST /sfcs
  # POST /sfcs.json
  def create
    @sfc = Sfc.new(sfc_params)

    respond_to do |format|
      if @sfc.save
        format.html { redirect_to @sfc, notice: 'SFC criado com sucesso.' }
        format.json { render :show, status: :created, location: @sfc }
      else
        format.html { render :new }
        format.json { render json: @sfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sfcs/1
  # PATCH/PUT /sfcs/1.json
  def update
    respond_to do |format|
      if @sfc.update(sfc_params)
        format.html { redirect_to @sfc, notice: 'SFC alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @sfc }
      else
        format.html { render :edit }
        format.json { render json: @sfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sfcs/1
  # DELETE /sfcs/1.json
  def destroy
    @sfc.destroy
    respond_to do |format|
      format.html { redirect_to sfcs_url, notice: 'SFC deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sfc
      @sfc = Sfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sfc_params
      params.require(:sfc).permit(:description)
    end
end

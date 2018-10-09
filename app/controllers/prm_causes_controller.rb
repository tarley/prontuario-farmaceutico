class PrmCausesController < ApplicationController
  before_action :set_prm_cause, only: [:show, :edit, :update, :destroy]

  # GET /prm_causes
  # GET /prm_causes.json
  def index
    @prm_causes = PrmCause.all
  end

  # GET /prm_causes/1
  # GET /prm_causes/1.json
  def show
  end

  # GET /prm_causes/new
  def new
    @prm_cause = PrmCause.new
  end

  # GET /prm_causes/1/edit
  def edit
  end

  # POST /prm_causes
  # POST /prm_causes.json
  def create
    @prm_cause = PrmCause.new(prm_cause_params)

    respond_to do |format|
      if @prm_cause.save
        format.html { redirect_to @prm_cause, notice: 'Causa de PRM criada com sucesso.' }
        format.json { render :show, status: :created, location: @prm_cause }
      else
        format.html { render :new }
        format.json { render json: @prm_cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prm_causes/1
  # PATCH/PUT /prm_causes/1.json
  def update
    respond_to do |format|
      if @prm_cause.update(prm_cause_params)
        format.html { redirect_to @prm_cause, notice: 'Causa de PRM alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @prm_cause }
      else
        format.html { render :edit }
        format.json { render json: @prm_cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prm_causes/1
  # DELETE /prm_causes/1.json
  def destroy
    @prm_cause.destroy
    respond_to do |format|
      format.html { redirect_to prm_causes_url, notice: 'Causa de PRM deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prm_cause
      @prm_cause = PrmCause.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prm_cause_params
      params.require(:prm_cause).permit(:description, :prm_id)
    end
end

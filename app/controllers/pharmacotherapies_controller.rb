class PharmacotherapiesController < ApplicationController
  before_action :authorize
  
  before_action :set_pharmacotherapy, only: [:show, :edit, :update, :destroy]

  # GET /pharmacotherapies
  # GET /pharmacotherapies.json
  def index
    @pharmacotherapies = Pharmacotherapy.all
  end

  # GET /pharmacotherapies/1
  # GET /pharmacotherapies/1.json
  def show
  end

  # GET /pharmacotherapies/new
  def new
    @pharmacotherapy = Pharmacotherapy.new
  end

  # GET /pharmacotherapies/1/edit
  def edit
  end

  # POST /pharmacotherapies
  # POST /pharmacotherapies.json
  def create
    @pharmacotherapy = Pharmacotherapy.new(pharmacotherapy_params)

    respond_to do |format|
      if @pharmacotherapy.save
        format.html { redirect_to @pharmacotherapy, notice: 'Farmacoterapia criada com sucesso.' }
        format.json { render :show, status: :created, location: @pharmacotherapy }
      else
        format.html { render :new }
        format.json { render json: @pharmacotherapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmacotherapies/1
  # PATCH/PUT /pharmacotherapies/1.json
  def update
    respond_to do |format|
      if @pharmacotherapy.update(pharmacotherapy_params)
        format.html { redirect_to @pharmacotherapy, notice: 'Farmacoterapia alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @pharmacotherapy }
      else
        format.html { render :edit }
        format.json { render json: @pharmacotherapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmacotherapies/1
  # DELETE /pharmacotherapies/1.json
  def destroy
    @pharmacotherapy.destroy
    respond_to do |format|
      format.html { redirect_to pharmacotherapies_url, notice: 'Farmacoterapia deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacotherapy
      @pharmacotherapy = Pharmacotherapy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharmacotherapy_params
      params.require(:pharmacotherapy).permit(:medicine, :dosageSchedule, :safety, :effectiveness, 
                                              :useDificulty, :timeUse, :carePlan, :descriptionDisease, 
                                              :treatment_id, :prm_id, :prmCause_id)
    end
end

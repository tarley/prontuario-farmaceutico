class PacientsController < ApplicationController
  before_action :authorize
  attr_accessor :profession
  attr_accessor :ub
  attr_accessor :service_access
  before_action :set_pacient, only: [:show, :edit, :update, :destroy]

  # GET /pacients
  # GET /pacients.json
  def index
    if params[:pesquisa]
      @pacients = Pacient.pesquisa(params[:pesquisa])
    else
      @pacients = Pacient.all
    end
  end

  # GET /pacients/1
  # GET /pacients/1.json
  def show
    @attendances = Attendance.where(pacient_id: @pacient.id).order(attendance_date: :desc)
    @professionAtualiza = Profession.all.map { |u| [u.description, u.id] }
    @ubAtualiza = Ub.all.map { |u| [u.description, u.id] }
    @serviceAccessAtualiza = ServiceAccess.all.map { |u| [u.description, u.id] }
  end
  
  # GET /pacients/new
  def new
    @pacient = Pacient.new
    @profession = Profession.new
    @ub = Ub.new
    @service_access = ServiceAccess.new
    
    @professionAtualiza = Profession.all.map { |u| [u.description, u.id] }
    @ubAtualiza = Ub.all.map { |u| [u.description, u.id] }
    @serviceAccessAtualiza = ServiceAccess.all.map { |u| [u.description, u.id] }
  end

  # GET /pacients/1/edit
  def edit
    @professionAtualiza = Profession.all.map { |u| [u.description, u.id] }
    @ubAtualiza = Ub.all.map { |u| [u.description, u.id] }
    @serviceAccessAtualiza = ServiceAccess.all.map { |u| [u.description, u.id] }
  end
  
  def updateProfessionAtualiza
    @professionAtualiza = Profession.all.map { |u| [u.description, u.id] }
  end
  
  def updateUbAtualiza
    @ubAtualiza = Ub.all.map { |u| [u.description, u.id] }
  end
  
  def updateServiceAccessAtualiza
    @serviceAccessAtualiza = ServiceAccess.all.map { |u| [u.description, u.id] }
  end

  # POST /pacients
  # POST /pacients.json
  def create
    @pacient = Pacient.new(pacient_params)
    @profession = Profession.new
    @ub = Ub.new
    @service_access = ServiceAccess.new

    respond_to do |format|
      if @pacient.save
        format.html { redirect_to @pacient, notice: 'Paciente criado com sucesso.' }
        format.json { render :show, status: :created, location: @pacient }
      else
        format.html { render :new }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacients/1
  # PATCH/PUT /pacients/1.json
  def update
    respond_to do |format|
      if @pacient.update(pacient_params)
        format.html { redirect_to @pacient, notice: 'Paciente alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @pacient }
      else
        format.html { render :edit }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.json
  def destroy
    @pacient.destroy
    respond_to do |format|
      format.html { redirect_to pacients_url, notice: 'Paciente excluido com sucesso.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacient
      @pacient = Pacient.find(params[:id])
    end

    def calculate_imc
        @weight = params[:weight].to_f
        @height = params[:height].to_f
        @IMC = (@weight/(@height*@height))
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def pacient_params
      params.require(:pacient).permit(:name, :place_attendence, :birth_date, :years_study, :genre, 
                                      :marital_status, :phone, :address, :services_professional, 
                                      :reason_meeting, :cpf, :profession_id, :service_access_id, :ub_id, 
                                      :physical_activity, :alcoholic_beverages, :cigarette, :daily_routine,
                                      :alternative_therapy, :alerts, :subjective_medications, :weight, 
                                      :height, :IMC, :wakeupat, :breakfast, :snack, :lunch, :latesnack,
                                      :dinner, :sleepat , :obs, :obsdrink, :obsphysical)
    end
end

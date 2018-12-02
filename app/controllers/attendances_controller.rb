class AttendancesController < ApplicationController
  before_action :authorize
  
  attr_accessor :pacient
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  # GET /attendances
  # GET /attendances.json
  def index
    if params[:pesquisa]
      @attendances = Attendance.pesquisa(params[:pesquisa])
    else
      @attendances = Attendance.all
    end
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  # POST /attendances.json
  def create
    @attendance = Attendance.new(attendance_params)

    diseases_params.map do |p|
      logger.debug p
      @attendance.diseases << Disease.new(p)
    end
    
    logger.debug 'teste 2'
    logger.debug @attendance.diseases
    
    
    #for item in @attendance.diseases
    #  logger.debug "Teste"
    #  logger.debug item.name
    #  logger.debug item.description
    #end

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'Atendimento criado com sucesso.' }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Atendimento alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Atendimento excluido com sucesso.' }
      format.json { head :no_content }
    end
  end
  
  # POST /add
  # POST /add.json
  def add
      @attendance = Attendance.new
      @attendance.general_screen = 'Add funcionou'
      format.html { render :new }
  end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

     # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
      
      logger.debug params
      
      params.require(:attendance).permit(:general_screen, :attendance_date, :pacient_id)
      
      #logger.debug params.diseases
      
      #params.permit(:general_screen, :attendance_date, :pacient_id, :prm_id, :prm_cause_id, :disease_id, 
      #               :pharmacotherapy_id, :sfc_id, :care_plan_id)
    end
    
    def diseases_params
      params.require(:diseases).map do |d|
        ActionController::Parameters.new(d).permit(:name, :description)
      end
    end
end

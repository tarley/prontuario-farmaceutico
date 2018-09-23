class CarePlansController < ApplicationController
  before_action :set_care_plan, only: [:show, :edit, :update, :destroy]

  # GET /care_plans
  # GET /care_plans.json
  def index
    @care_plans = CarePlan.all
  end

  # GET /care_plans/1
  # GET /care_plans/1.json
  def show
  end

  # GET /care_plans/new
  def new
    @care_plan = CarePlan.new
  end

  # GET /care_plans/1/edit
  def edit
  end

  # POST /care_plans
  # POST /care_plans.json
  def create
    @care_plan = CarePlan.new(care_plan_params)

    respond_to do |format|
      if @care_plan.save
        format.html { redirect_to @care_plan, notice: 'Care plan was successfully created.' }
        format.json { render :show, status: :created, location: @care_plan }
      else
        format.html { render :new }
        format.json { render json: @care_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /care_plans/1
  # PATCH/PUT /care_plans/1.json
  def update
    respond_to do |format|
      if @care_plan.update(care_plan_params)
        format.html { redirect_to @care_plan, notice: 'Care plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @care_plan }
      else
        format.html { render :edit }
        format.json { render json: @care_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /care_plans/1
  # DELETE /care_plans/1.json
  def destroy
    @care_plan.destroy
    respond_to do |format|
      format.html { redirect_to care_plans_url, notice: 'Care plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_plan
      @care_plan = CarePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def care_plan_params
      params.require(:care_plan).permit(:therapeutic_goal, :conduct, :results_date, :anothers_conduct, :pharmacotherapy_id, :prm_id, :sfc_id, :prmCause_id)
    end
end

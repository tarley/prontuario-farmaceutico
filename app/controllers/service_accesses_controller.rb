class ServiceAccessesController < ApplicationController
  before_action :set_service_access, only: [:show, :edit, :update, :destroy]

  # GET /service_accesses
  # GET /service_accesses.json
  def index
    @service_accesses = ServiceAccess.all
  end

  # GET /service_accesses/1
  # GET /service_accesses/1.json
  def show
  end

  # GET /service_accesses/new
  def new
    @service_access = ServiceAccess.new
  end

  # GET /service_accesses/1/edit
  def edit
  end

  # POST /service_accesses
  # POST /service_accesses.json
  def create
    @service_access = ServiceAccess.new(service_access_params)

    respond_to do |format|
      if @service_access.save
        format.html { redirect_to @service_access, notice: 'Service access was successfully created.' }
        format.json { render :show, status: :created, location: @service_access }
      else
        format.html { render :new }
        format.json { render json: @service_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_accesses/1
  # PATCH/PUT /service_accesses/1.json
  def update
    respond_to do |format|
      if @service_access.update(service_access_params)
        format.html { redirect_to @service_access, notice: 'Service access was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_access }
      else
        format.html { render :edit }
        format.json { render json: @service_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_accesses/1
  # DELETE /service_accesses/1.json
  def destroy
    @service_access.destroy
    respond_to do |format|
      format.html { redirect_to service_accesses_url, notice: 'Service access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_access
      @service_access = ServiceAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_access_params
      params.require(:service_access).permit(:description)
    end
end

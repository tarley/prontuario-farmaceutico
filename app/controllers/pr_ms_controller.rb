class PrMsController < ApplicationController
  before_action :set_prm, only: [:show, :edit, :update, :destroy]

  # GET /prms
  # GET /prms.json
  def index
    @prms = Prm.all
  end

  # GET /prms/1
  # GET /prms/1.json
  def show
  end

  # GET /prms/new
  def new
    @prm = Prm.new
  end

  # GET /prms/1/edit
  def edit
  end

  # POST /prms
  # POST /prms.json
  def create
    @prm = Prm.new(prm_params)

    respond_to do |format|
      if @prm.save
        format.html { redirect_to @prm, notice: 'Prm was successfully created.' }
        format.json { render :show, status: :created, location: @prm }
      else
        format.html { render :new }
        format.json { render json: @prm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prms/1
  # PATCH/PUT /prms/1.json
  def update
    respond_to do |format|
      if @prm.update(prm_params)
        format.html { redirect_to @prm, notice: 'Prm was successfully updated.' }
        format.json { render :show, status: :ok, location: @prm }
      else
        format.html { render :edit }
        format.json { render json: @prm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prms/1
  # DELETE /prms/1.json
  def destroy
    @prm.destroy
    respond_to do |format|
      format.html { redirect_to prms_url, notice: 'Prm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prm
      @prm = Prm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prm_params
      params.require(:prm).permit(:description)
    end
end

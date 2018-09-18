class UbsController < ApplicationController
  before_action :set_ub, only: [:show, :edit, :update, :destroy]

  # GET /ubs
  # GET /ubs.json
  def index
    @ubs = Ub.all
  end

  # GET /ubs/1
  # GET /ubs/1.json
  def show
  end

  # GET /ubs/new
  def new
    @ub = Ub.new
  end

  # GET /ubs/1/edit
  def edit
  end

  # POST /ubs
  # POST /ubs.json
  def create
    @ub = Ub.new(ub_params)

    respond_to do |format|
      if @ub.save
        format.html { redirect_to @ub, notice: 'Ub was successfully created.' }
        format.json { render :show, status: :created, location: @ub }
      else
        format.html { render :new }
        format.json { render json: @ub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ubs/1
  # PATCH/PUT /ubs/1.json
  def update
    respond_to do |format|
      if @ub.update(ub_params)
        format.html { redirect_to @ub, notice: 'Ub was successfully updated.' }
        format.json { render :show, status: :ok, location: @ub }
      else
        format.html { render :edit }
        format.json { render json: @ub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ubs/1
  # DELETE /ubs/1.json
  def destroy
    @ub.destroy
    respond_to do |format|
      format.html { redirect_to ubs_url, notice: 'Ub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ub
      @ub = Ub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ub_params
      params.require(:ub).permit(:description)
    end
end

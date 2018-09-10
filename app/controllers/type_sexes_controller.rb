class TypeSexesController < ApplicationController
  before_action :set_type_sex, only: [:show, :edit, :update, :destroy]

  # GET /type_sexes
  # GET /type_sexes.json
  def index
    @type_sexes = TypeSex.all
  end

  # GET /type_sexes/1
  # GET /type_sexes/1.json
  def show
  end

  # GET /type_sexes/new
  def new
    @type_sex = TypeSex.new
  end

  # GET /type_sexes/1/edit
  def edit
  end

  # POST /type_sexes
  # POST /type_sexes.json
  def create
    @type_sex = TypeSex.new(type_sex_params)

    respond_to do |format|
      if @type_sex.save
        format.html { redirect_to @type_sex, notice: 'Type sex was successfully created.' }
        format.json { render :show, status: :created, location: @type_sex }
      else
        format.html { render :new }
        format.json { render json: @type_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_sexes/1
  # PATCH/PUT /type_sexes/1.json
  def update
    respond_to do |format|
      if @type_sex.update(type_sex_params)
        format.html { redirect_to @type_sex, notice: 'Type sex was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_sex }
      else
        format.html { render :edit }
        format.json { render json: @type_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_sexes/1
  # DELETE /type_sexes/1.json
  def destroy
    @type_sex.destroy
    respond_to do |format|
      format.html { redirect_to type_sexes_url, notice: 'Type sex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_sex
      @type_sex = TypeSex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_sex_params
      params.require(:type_sex).permit(:description)
    end
end

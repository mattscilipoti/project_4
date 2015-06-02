class NextdoorsController < ApplicationController
  before_action :set_nextdoor, only: [:show, :edit, :update, :destroy]

  # GET /nextdoors
  # GET /nextdoors.json
  def index
    @nextdoors = Nextdoor.all
  end

  # GET /nextdoors/1
  # GET /nextdoors/1.json
  def show
  end

  # GET /nextdoors/new
  def new
    @nextdoor = Nextdoor.new
  end

  # GET /nextdoors/1/edit
  def edit
  end

  # POST /nextdoors
  # POST /nextdoors.json
  def create
    @nextdoor = Nextdoor.new(nextdoor_params)

    respond_to do |format|
      if @nextdoor.save
        format.html { redirect_to @nextdoor, notice: 'Nextdoor was successfully created.' }
        format.json { render :show, status: :created, location: @nextdoor }
      else
        format.html { render :new }
        format.json { render json: @nextdoor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nextdoors/1
  # PATCH/PUT /nextdoors/1.json
  def update
    respond_to do |format|
      if @nextdoor.update(nextdoor_params)
        format.html { redirect_to @nextdoor, notice: 'Nextdoor was successfully updated.' }
        format.json { render :show, status: :ok, location: @nextdoor }
      else
        format.html { render :edit }
        format.json { render json: @nextdoor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nextdoors/1
  # DELETE /nextdoors/1.json
  def destroy
    @nextdoor.destroy
    respond_to do |format|
      format.html { redirect_to nextdoors_url, notice: 'Nextdoor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nextdoor
      @nextdoor = Nextdoor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nextdoor_params
      params.require(:nextdoor).permit(:chef, :title, :notes)
    end
end

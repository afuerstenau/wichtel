class ChristmaseveningsController < ApplicationController
  before_action :set_christmasevening, only: [:show, :edit, :update, :destroy]

  def show_years
    @christmasevenings = Christmasevening.where(year: params[:year])
  end

  def show_year_giver
    giver_id = Participant.find_by name: params[:giver]
    @christmasevening = Christmasevening.find_by year: params[:year], giver: giver_id
  end

  def scramble
    year = params[:year]
    Christmasevening.destroy_by(year: year)
    Participant.all.each |giver| do
      
    end
    redirect_to christmasevenings_url, notice: "Das Jahr #{year} wurde neu gemischt!"
  end

  # GET /christmasevenings
  # GET /christmasevenings.json
  def index
    @christmasevenings = Christmasevening.all
  end

  # GET /christmasevenings/1
  # GET /christmasevenings/1.json
  def show
  end

  # GET /christmasevenings/new
  def new
    @christmasevening = Christmasevening.new
  end

  # GET /christmasevenings/1/edit
  def edit
  end

  # POST /christmasevenings
  # POST /christmasevenings.json
  def create
    @christmasevening = Christmasevening.new(christmasevening_params)

    respond_to do |format|
      if @christmasevening.save
        format.html { redirect_to @christmasevening, notice: 'Christmasevening was successfully created.' }
        format.json { render :show, status: :created, location: @christmasevening }
      else
        format.html { render :new }
        format.json { render json: @christmasevening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /christmasevenings/1
  # PATCH/PUT /christmasevenings/1.json
  def update
    respond_to do |format|
      if @christmasevening.update(christmasevening_params)
        format.html { redirect_to @christmasevening, notice: 'Christmasevening was successfully updated.' }
        format.json { render :show, status: :ok, location: @christmasevening }
      else
        format.html { render :edit }
        format.json { render json: @christmasevening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /christmasevenings/1
  # DELETE /christmasevenings/1.json
  def destroy
    @christmasevening.destroy
    respond_to do |format|
      format.html { redirect_to christmasevenings_url, notice: 'Christmasevening was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_christmasevening
      @christmasevening = Christmasevening.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def christmasevening_params
      params.require(:christmasevening).permit(:year, :giver_id, :receiver_id)
    end
end

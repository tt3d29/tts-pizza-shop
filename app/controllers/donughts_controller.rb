class DonughtsController < ApplicationController
  before_action :set_donught, only: [:show, :edit, :update, :destroy]

  # GET /donughts
  # GET /donughts.json
  def index
    @donughts = Donught.all
  end

  # GET /donughts/1
  # GET /donughts/1.json
  def show
  end

  # GET /donughts/new
  def new
    @donught = Donught.new
  end

  # GET /donughts/1/edit
  def edit
  end

  # POST /donughts
  # POST /donughts.json
  def create
    @donught = Donught.new(donught_params)

    respond_to do |format|
      if @donught.save
        format.html { redirect_to @donught, notice: 'Donught was successfully created.' }
        format.json { render :show, status: :created, location: @donught }
      else
        format.html { render :new }
        format.json { render json: @donught.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donughts/1
  # PATCH/PUT /donughts/1.json
  def update
    respond_to do |format|
      if @donught.update(donught_params)
        format.html { redirect_to @donught, notice: 'Donught was successfully updated.' }
        format.json { render :show, status: :ok, location: @donught }
      else
        format.html { render :edit }
        format.json { render json: @donught.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donughts/1
  # DELETE /donughts/1.json
  def destroy
    @donught.destroy
    respond_to do |format|
      format.html { redirect_to donughts_url, notice: 'Donught was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donught
      @donught = Donught.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donught_params
      params[:donught]
    end
end

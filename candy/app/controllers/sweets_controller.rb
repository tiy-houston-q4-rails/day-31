class SweetsController < ApplicationController

  before_action :authenticate_user!

  before_action :set_sweet, only: [:show, :edit, :update, :destroy]

  # GET /sweets
  # GET /sweets.json
  def index
    @sweets = Sweet.all
  end

  # GET /sweets/1
  # GET /sweets/1.json
  def show
  end

  # GET /sweets/new
  def new
    @sweet = Sweet.new
  end

  # GET /sweets/1/edit
  def edit
  end

  # POST /sweets
  # POST /sweets.json
  def create
    @sweet = Sweet.new(sweet_params)

    respond_to do |format|
      if @sweet.save
        format.html { redirect_to @sweet, notice: 'Sweet was successfully created.' }
        format.json { render :show, status: :created, location: @sweet }
      else
        format.html { render :new }
        format.json { render json: @sweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sweets/1
  # PATCH/PUT /sweets/1.json
  def update
    respond_to do |format|
      if @sweet.update(sweet_params)
        format.html { redirect_to @sweet, notice: 'Sweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @sweet }
      else
        format.html { render :edit }
        format.json { render json: @sweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sweets/1
  # DELETE /sweets/1.json
  def destroy
    @sweet.destroy
    respond_to do |format|
      format.html { redirect_to sweets_url, notice: 'Sweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweet
      @sweet = Sweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sweet_params
      params.require(:sweet).permit(:name, :photo)
    end
end

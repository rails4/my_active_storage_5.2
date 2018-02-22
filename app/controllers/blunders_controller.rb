class BlundersController < ApplicationController
  before_action :set_blunder, only: [:show, :edit, :update, :destroy]

  # GET /blunders
  # GET /blunders.json
  def index
    @blunders = Blunder.all
  end

  # GET /blunders/1
  # GET /blunders/1.json
  def show
  end

  # GET /blunders/new
  def new
    @blunder = Blunder.new
  end

  # GET /blunders/1/edit
  def edit
  end

  # POST /blunders
  # POST /blunders.json
  def create
    @blunder = Blunder.new(blunder_params)

    respond_to do |format|
      if @blunder.save
        format.html { redirect_to @blunder, notice: 'Blunder was successfully created.' }
        format.json { render :show, status: :created, location: @blunder }
      else
        format.html { render :new }
        format.json { render json: @blunder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blunders/1
  # PATCH/PUT /blunders/1.json
  def update
    respond_to do |format|
      if @blunder.update(blunder_params)
        format.html { redirect_to @blunder, notice: 'Blunder was successfully updated.' }
        format.json { render :show, status: :ok, location: @blunder }
      else
        format.html { render :edit }
        format.json { render json: @blunder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blunders/1
  # DELETE /blunders/1.json
  def destroy
    @blunder.destroy
    respond_to do |format|
      format.html { redirect_to blunders_url, notice: 'Blunder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blunder
    @blunder = Blunder.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def blunder_params
    # params.require(:blunder).permit(:description)
    params.require(:blunder).permit(:description, :image)
  end
end

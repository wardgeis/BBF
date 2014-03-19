class BeerBarsController < ApplicationController
  before_action :set_beer_bar, only: [:show, :edit, :update, :destroy]

  # GET /beer_bars
  # GET /beer_bars.json
  def index
    @beer_bars = BeerBar.all
  end

  # GET /beer_bars/1
  # GET /beer_bars/1.json
  def show
  end

  # GET /beer_bars/new
  def new
    @beer_bar = BeerBar.new
  end

  # GET /beer_bars/1/edit
  def edit
  end

  # POST /beer_bars
  # POST /beer_bars.json
  def create
    @beer_bar = BeerBar.new(beer_bar_params)

    respond_to do |format|
      if @beer_bar.save
        format.html { redirect_to @beer_bar, notice: 'Beer bar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beer_bar }
      else
        format.html { render action: 'new' }
        format.json { render json: @beer_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_bars/1
  # PATCH/PUT /beer_bars/1.json
  def update
    respond_to do |format|
      if @beer_bar.update(beer_bar_params)
        format.html { redirect_to @beer_bar, notice: 'Beer bar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beer_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_bars/1
  # DELETE /beer_bars/1.json
  def destroy
    @beer_bar.destroy
    respond_to do |format|
      format.html { redirect_to beer_bars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_bar
      @beer_bar = BeerBar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_bar_params
      params.require(:beer_bar).permit(:bb_id, :name, :address, :city, :state, :zipcode, :description, :website, :datecreated)
    end
end

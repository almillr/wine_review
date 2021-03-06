class WinesController < ApplicationController
  before_action :set_wine,
                only: [ :show, :edit, :update, :destroy ]

  def index
    @available_at = Time.now
    @wines = Wine.includes(:log_entries).order(:name).page(params[:page])
  end

  def show; end

  def new
    @wine = Wine.new
  end

  def create
    @wine= Book.new(book_params)
    if @wine.save
      redirect_to @wine, notice: "#{@wine.name} was created!"
    else
      render :new
    end
  end

  def update
    if @wine.update(wine_params)
      redirect_to @wine, notice: "#{@wine.name} was updated!"
    else
      render :edit
    end
  end

  def destroy
    @wine.destroy
    redirect_to wines_url
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :winery, :country, :average_rating, :year, :varietal)
  end

  def set_wine
    @wine = Wine.find(params[:id])
  end

end
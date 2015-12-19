class WinesController < ApplicationController
  before_action :new_wine,
                only: [ :create ]
  before_action :set_wine,
                only: [ :show, :update, :edit, :destroy ]

  def index
    @available_at = Time.now
    @wines = Wine.all
  end

  def show; end

  def new
    @wine = Wine.new
  end

  def create
    @wine.save
    redirect_to @wine
  end

  def edit; end

  def update
    @wine.update(wine_params)
    redirect_to @wine
  end

  def destroy
    @wine.destroy
    redirect_to wines_url
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :winery, :country, :year, :varietal)
  end

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def new_wine
    @wine = Wine.new(wine_params)
  end

end
class SeedsController < ApplicationController

  def index
    @seeds = Seed.order(id: :asc)
  end

  def topic
    if params[:topic] == "conifers"
      @seeds = Seed.order(id: :asc).where(conifers: true)
    elsif params[:topic] == "deciduous"
      @seeds = Seed.order(id: :asc).where(conifers: false)
    else
      return redirect_to root_path, notice: "Неправильная категория!"
    end
    render 'index'
  end

  def show
    @seed = Seed.find(params[:id])
  end

  private

    # Only allow a list of trusted parameters through.
    def seed_params
      params.require(:seed).permit(:title, :latin_title, :description, :usda, :image)
    end
end

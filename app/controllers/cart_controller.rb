class CartController < ApplicationController
  def index
    @order_input = params[:orders]
    @items = parse_orders(@order_input)
    
    @items.each do |item|
      item[0] = Seed.find(item[0])
    end
  end

  def parse_orders order_input
    s1 = order_input.split(/,/)
    arr = []
  
    s1.each do |x|
      s2 = x.split(/=/)
      s3 = s2[0].split(/_/)
  
      id = s3[1]
      count = s2[1]
  
      arr2 = [id, count]
  
      arr.push arr2
    end
  
    return arr
  end

  # private
  # # Use callbacks to share common setup or constraints between actions.
  # def set_seed
  #   @seed = Seed.find(params[:id])
  # end

  # # Only allow a list of trusted parameters through.
  # def seed_params
  #   params.require(:seed).permit(:title, :latin_title, :description, :usda, :image)
  # end
end

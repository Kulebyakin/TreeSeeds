class CartController < ApplicationController
  def index
    @order_input = params[:orders]

    if @order_input.empty?
      flash[:alert] = "Ваша корзина пуста. Добавьте желаемые товары в корзину."
      redirect_to root_path
    end 

    @items = JSON.parse(@order_input)
    
    @items.each do |item|
      item["id"] = Seed.find(item["id"])
    end
  end

end

class CartController < ApplicationController
  before_action :authenticate_user!

  def index
    @order_input = params[:orders]

    if @order_input.empty?
      flash[:alert] = "Ваша корзина пуста. Добавьте желаемые товары в корзину."
      redirect_to root_path
    else
      @items = JSON.parse(@order_input)
      
      @items.each do |item|
        item["id"] = Seed.find(item["id"])
      end
    end
    @regions = Region.all
    @order = Order.new
  end

end

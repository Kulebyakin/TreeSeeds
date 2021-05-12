class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:show]

  # GET /orders
  # GET /orders.json
  def index
    @orders = current_user.orders.all.order(id: :desc)
    redirect_to root_path, notice: "У вас не было заказов. Сделайте первый!" if @orders.empty?
    @orders_finished = current_user.orders.where(status: "received")
  end

  def finished
    @orders = current_user.orders.where(status: "received")
    redirect_to root_path, notice: "У вас нет завершенных заказов!" if @orders.empty?
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'order was successfully created.' }
        format.json { render :show, status: :created, location: @order }

        OrderMailer.with(order: @order).new_order_email.deliver_later # sending new-order-email to admin
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def correct_user
      @order = current_user.orders.find_by(id: params[:id])
      redirect_to orders_path, notice: "Not authorised to show this order" if @order.nil?
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:full_name, :phone, :status, :region_id, :address, :order, :zip, :user_id)
    end
end

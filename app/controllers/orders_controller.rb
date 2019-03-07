class OrdersController < ApplicationController
  before_action :order_set, only: [:show, :edit, :update, :destroy]

  def new
    Order.new    
  end

  def create
    table = Table.find(params[:id])
    @order = table.orders.build(order_params)
    if @order.save
      redirect_to @order, notice: "Order created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to edit_order_path(@order), notice: "Updated..."
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
  end

  private

  def order_set
    @order = Order.find(params[:id])    
  end

  def order_params
    params.require(:order).permit(:begin_time,
                                  :end_time,
                                  :client_name,
                                  :client_phone)
  end

end
class TradesController < ApplicationController
  def index
    @trade = Trade.all.order('id ASC')
  end

  def new
    @trade = Trade.new
  end

  def edit
    @trade = Trade.find(params[:id])
  end

  def update
    @trade = Trade.find(params[:id])
    if @trade.update(trade_params)
      redirect_to trade_path
    else
      redirect_to edit_trade_path
    end
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy
    redirect_to root_path
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.save
      redirect_to root_path
    else
      redirect_to new_trade_path
    end
  end

  private
  def trade_params
    params.require(:trade).permit(:buyer, :product, :price, :tel, :staff, :payment_date, :delivery_date, :storage_location, :contact_data, :memo)
  end
end

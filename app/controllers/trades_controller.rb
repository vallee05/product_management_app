class TradesController < ApplicationController
  def index
    @buyer = Buyer.all.order('id ASC')
    # @trade = Trade.all.order('id ASC')
  end

  def new
    @trade = Trade.new
  end

  def show
  end

  def edit
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy
  end

  def create
    @trade = Trade.new
    if @trade.save
      redirect_to '/trades'
    else
      redirect_to '/trades/new'
      flash[:alert] = '正しく入力して下さい'
    end
  end

  # private
  # def trade_params
  #   params.require(:trade).permit(:buyer_id, :product_id, :price, :tel_number, :staff_id, :payment_date, :delivery_date, :storage_location_id)
  # end
end

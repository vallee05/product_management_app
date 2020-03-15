class TradesController < ApplicationController
  def index
    @buyer = Buyer.all.order('id ASC')
    # @trade = Trade.all.order('id ASC')
  end

  def new
    @trade = Trade.new
    # @trade.products.build
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
    trade = trade.new(trade_params)
    trade.save
    redirect_to root_path
    # @trade = Trade.new(buyer_id: params[:buyer_id])
    # binding.pry
    # if @trade.save
    #   redirect_to '/trades'
    # else
    #   redirect_to '/trades/new'
    #   flash[:alert] = '正しく入力して下さい'
    # end
  end

  private
  def trade_params
    params.require(:trade).permit(products_attributes: [:product_name])
  end
end

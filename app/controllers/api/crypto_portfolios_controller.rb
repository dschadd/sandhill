class Api::CryptoPortfoliosController < ApplicationController

  # before_action :authenticate_user

  def index
    @crypto_portfolios = CryptoPortfolio.all
    render "index.json.jbuilder"
  end

  def create
    @crypto_portfolio = CryptoPortfolio.new(
      crypto_id: params[:crypto_id],
      user_id: params[:user_id],
      portfolio_id: params[:portfolio_id],
      shares: params[:count]
      )
    if @crypto_portfolio.save
      render "show.json.jbuilder"
    else
      render json: {errors: @crypto_portfolio.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @crypto_portfolio = CryptoPortfolio.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @crypto_portfolio = CryptoPortfolio.find_by(id: params[:id])
    @crypto_portfolio.shares = params[:shares] || @crypto_portfolio.shares
    if @crypto_portfolio.save
      render "show.json.jbuilder"
    else
      render json: {errors: @crypto_portfolio.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @crypto_portfolio = CryptoPortfolio.find_by(id: params[:id])
    @crypto_portfolio.destroy
  end
end

class Api::PortfoliosController < ApplicationController

  # before_action :authenticate_user

  def index
    @portfolios = Portfolio.all
    render "index.json.jbuilder"
  end

  def create
    @portfolio = Portfolio.new(
      user_id: current_user.id,
      name: params[:name],
      private: params[:private],
      initial_cash: params[:initial_cash],
      current_cash: params[:current_cash]
      )
    if @portfolio.save
      company = Company.find_by(id: params[:company_id])
      CompanyPortfolio.create(
        portfolio_id: @portfolio.id,
        user_id: current_user.id,
        company_id: params[:company_id],
        shares: params[:shares],
        purchase_price: company.today_price
        )
      crypto = Crypto.find_by(id: params[:crypto_id])
      CryptoPortfolio.create(
        portfolio_id: @portfolio.id,
        user_id: current_user.id,
        crypto_id: params[:crypto_id],
        count: params[:count],
        purchase_price: crypto.today_price
        )

      render "show.json.jbuilder"
    else
      render json: {errors: @portfolio.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @portfolio = Portfolio.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @portfolio = Portfolio.find_by(id: params[:id])
    @portfolio.name = params[:name] || portfolio.name
    @portfolio.private = params[:private] || portfolio.private
    @portfolio.current_cash = params[:current_cash] || portfolio.current_cash
    if @portfolio.save
      render "show.json.jbuilder"
    else
      render json: {errors: @portfolio.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @portfolio = Portfolio.find_by(params[:id])
    @portfolio.destroy
    render json: {message: "Y'all done n did it"}
  end

end

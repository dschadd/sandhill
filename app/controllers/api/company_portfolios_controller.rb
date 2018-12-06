class Api::CompanyPortfoliosController < ApplicationController

  # before_action :authenticate_user

  def index
    @company_portfolios = CompanyPortfolio.all
    render "index.json.jbuilder"
  end

  def create
    @company_portfolio = CompanyPortfolio.new(
      company_id: params[:company_id],
      user_id: params[:user_id],
      portfolio_id: params[:portfolio_id],
      shares: params[:shares],
      purchase_price: params[:purchase_price]
      )
    if @company_portfolio.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company_portfolio.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @company_portfolio = CompanyPortfolio.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @company_portfolio = CompayPortfolio.find_by(id: params[:id])
    @company_portfolio.shares = params[:shares] || @company_portfolio.shares
    @company_portfolio.purchase_price = params[:purchase_price] || @company_portfolio.purchase_price
    if @company_portfolio.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company_portfolio.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @company_portfolio = CompanyPortfolio.find_by(id: params[:id])
    @company_portfolio.destroy
  end
end

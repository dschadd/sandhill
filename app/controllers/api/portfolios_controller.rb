class Api::PortfoliosController < ApplicationController

  before_action :authenticate_user

  def index
    @portfolios = Portfolio.all
    render "index.json.jbuilder"
  end

  def create
    @portfolio = Portfolio.new(
      user_id: current_user.id,
      name: params[:name],
      private: params[:private]
      )
    if @portfolio.save
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
    if portfolio.save
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

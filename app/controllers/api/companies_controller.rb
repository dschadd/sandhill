class Api::CompaniesController < ApplicationController

  # before_action :authenticate_user

  def index
    @companies = Company.all
    render "index.json.jbuilder"
  end

  def create
    @company = Company.new(
      name: params[:name],
      ticker: params[:ticker]
      )
    if @company.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @company = Company.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.name = params[:name] || @company.name
    @company.ticker = params[:ticker] || @company.ticker
    if @company.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
  end
  
end

class Api::CryptosController < ApplicationController

  before_action :authenticate_user

  def index
    @cryptos = Crypto.all
    render "index.json.jbuilder"
  end

  def create
    @crypto = Cryto.new(
      name: params[:name],
      ticker: params[:ticker]
      )
    if @crypto.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @crypto = Crypto.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @crypto = Crypto.find_by(id: params[:id])
    @crypto.name = params[:name] || @crypto.name
    @crypto.ticker = params[:ticker] || @crypto.ticker
    if @crypto.save
      render "show.json.jbuilder"
    else
      render json: {errors: @crypto.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @crypto = Crypto.find_by(id: params[:id])
    @crypto.destroy
  end
end

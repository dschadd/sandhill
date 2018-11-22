class Api::CryptoFollowsController < ApplicationController

  # before_action :authenticate_user

  def index
    @crypto_follows = CryptoFollow.all
    render "index.json.jbuilder"
  end

  def create
    @crypto_follow = CryptoFollow.new(
      user_id: params[:user_id],
      crypto_id: params[:crypto_id],
      follow: params[:follows]
      )
    if @crypto_follow.save
      render "show.json.jbuilder"
    else
      render json: {errors: @crypto_follow.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @crypto_follow = CryptoFollow.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @crypto_follow = CryptoFollow.find_by(id: params[:id])
    @crypto_follow.follow = params[:follow] || @crypto_follow.follow
    if @crypto_follow.save
      render "show.json.jbuilder"
    else
      render json: {errors: @crypto_follow.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @crypto_follow = CryptoFollow.find_by(id: params[:id])
    @crypto_follow.destroy
  end
end

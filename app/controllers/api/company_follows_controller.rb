class Api::CompanyFollowsController < ApplicationController

  before_action :authenticate_user

  def index
    @company_follows = Company_follows.all
    render "index.json.jbuilder"
  end

  def create
    @company_follow = Company_follow.new(
      user_id: params[:user_id],
      company_id: params[:company_id],
      follow: params[:follows]
      )
  end

  def show
    @company_follow = Company_follows.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @company_follow = Company_follow.find_by(id: params[:id])
    @company_follow.follow = params[:follow] || @company_follow.follow
    if @company_follow.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company_follow.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @company_follow = Company_follow.find_by(id: params[:id])
    @company_follow.destroy
  end

end

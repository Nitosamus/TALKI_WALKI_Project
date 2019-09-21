class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    
  end

  def update
    @user = User.find(params[:id])
    @users = @user.update(last_name: params[:last_name], first_name: params[:first_name], city: params[:city], description: params[:description], function: params[:function], phone_number: params[:phone_number])
    redirect_to user_path(@user.id)

  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to users_path
  end

  def new
  	@user = User.new
  end

  def create
  	@users = @user.create(last_name: params[:last_name], first_name: params[:first_name], city: params[:city], description: params[:description], function: params[:function], phone_number: params[:phone_number])
  	redirect_to user_path(@user.id)
  end
end
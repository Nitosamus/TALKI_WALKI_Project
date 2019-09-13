class UsersController < ApplicationController
  def index
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
  end

  def new
  end

  def create
  end
end
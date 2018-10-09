class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def new
    @user = User.new
  end
  def create
    
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
       sign_in(@user)
       redirect_to root_url
    else
      render action: :new
    end
  end
  def destroy
    sign_out
    redirect_to root_url
  end
  
end
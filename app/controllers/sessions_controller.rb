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
      #flash[:error] = "Email e/ou senha inválido ou inexistente !"
      #render action: :new
      redirect_to root_url, danger: "Email e/ou senha inválido ou inexistente !"
    end
  end
  def destroy
    sign_out
    redirect_to root_url
  end
  
end
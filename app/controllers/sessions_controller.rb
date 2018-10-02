class SessionsController < ApplicationController
before_action :block_access, except: [:destroy]
  def create  
    @user = User.find_by(email: params[:session][:email].downcase)
<<<<<<< HEAD
    #if @user && @user.authenticate(params[:session][:password])
       sign_in
       redirect_to root_url
    #else
    #   render action: :new
    #end
=======
    puts @user
    if @user && @user.authenticate(params[:session][:password])
       sign_in(@user)
       redirect_to current_user
    else
       render action: :new
    end
>>>>>>> 4dd13a38760b68692343615dcffea0a39024fe35
  end
  def destroy
    sign_out
    redirect_to root_url
  end
end
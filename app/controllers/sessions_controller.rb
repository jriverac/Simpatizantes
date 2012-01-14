=begin===================================================================================
CONTROLLER
=========================================================================================
CHANGE TRACK
14/01/2012  jrc This is the main controller for sessions.

=========================================================================================
=end 
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      session[:user_name] = user.user_id
      session[:user_super] = user.super
      if user.super 
        redirect_to supporters_url, :notice => "Bienvenido Administrador"
      else
        redirect_to supporters_url, :notice => "Bienvenido Usuario"
      end
    else
      flash.now.alert = "Correo electrónico o contraseña incorrecta."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Ha salido del sistema!"
  end

end
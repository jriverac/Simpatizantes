class UsersController < ApplicationController
  def new
    @user = User.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def index
    if session[:user_id] != nil 
      
        
        @users = User.all
        respond_to do |format|
          format.html # index.html.erb
          format.json { render :json => @users }
        end
        
        else
      
        redirect_to root_url, :notice => "Debe iniciar sesion."
        end
    end

  def create

    @user = User.new(params[:user])
    if @user.save
      if session[:user_super]
        redirect_to users_url
      else
        redirect_to @user, :notice => "Signed up!"
      end
#      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end
  
  def update
 
    @user = User.find(params[:id])
    
    respond_to do |format|
      if @user.update_attributes!(params[:user])
 
        format.html { redirect_to @user, :notice => 'El registro se actualizo con exito.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
end

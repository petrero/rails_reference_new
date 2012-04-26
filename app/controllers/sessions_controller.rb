class SessionsController < ApplicationController
  def new
  end

  def create
    user = env['warden'].authenticate
    if user
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = env['warden'].message
      render "new"
    end
  end

  def destroy
    env['warden'].logout
    redirect_to root_url, notice: "Logged out!"
  end
end

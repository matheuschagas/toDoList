class HomeController < ApplicationController
  def index
    if !session[:usuario] then
      redirect_to('/login')
    end
  end

  def login
    if session[:usuario] then
      redirect_to('/index')
    end
  end
  def sair
    session.delete(:usuario)
    redirect_to('/')
  end
end

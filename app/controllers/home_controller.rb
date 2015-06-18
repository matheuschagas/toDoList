class HomeController < ApplicationController
  def index
    if !session[:usuario] then
      redirect_to('/login')
    end
  end

  def login

  end

  def sair
    session.delete(:usuario)
    redirect_to('/')
  end
end

class HomeController < ApplicationController
  def index
    if !session[:idUsuario] then
      redirect_to('/login')
    else
      @usuario = Usuario.find(session[:idUsuario])
      @tarefas = @usuario.tarefas
    end
  end

  def login
    @titulo = 'Login'
  end

  # POST /checarLogin
  def checarLogin

    if Usuario.find_by_login(params['login'])
      @usuario = Usuario.find_by_login(params['login'])
      if @usuario[:senha] == params['senha']
        session[:idUsuario] = @usuario.id
        session[:nome] = @usuario.nome
        redirect_to('/')
      else
        flash[:notice] =  ""
        redirect_to('/login')
      end
    else
      flash[:notice] =  ""
      redirect_to('/login')
    end
  end

  def sair
    session.delete(:idUsuario)
    session.delete(:nome)
    redirect_to('/')
  end
end

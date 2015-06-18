class Usuario < ActiveRecord::Base
  has_many :tarefas
end

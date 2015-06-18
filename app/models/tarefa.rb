class Tarefa < ActiveRecord::Base
  belongs_to :usuario
  validates_presence_of :texto
  validates_presence_of :data
end

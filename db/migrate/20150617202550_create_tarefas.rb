class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|
      t.datetime :data, :null => false
      t.text :texto, :null => false
      t.boolean :done, :null => false, :default => 0
      t.references :usuario

      t.timestamps
    end
  end
end

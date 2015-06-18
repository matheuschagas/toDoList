class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.text :login, :null => false
      t.text :senha, :null => false
      t.text :nome, :null => false
      t.date :dataNasc, :null => false
      t.text :email, :null => false

      t.timestamps
    end
  end
end

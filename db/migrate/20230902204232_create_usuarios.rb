class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :nome
      t.integer :telefone
      t.string :senha

      t.timestamps
    end
  end
end

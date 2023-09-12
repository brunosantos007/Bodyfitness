class CreatePlanos < ActiveRecord::Migration[7.0]
  def change
    create_table :planos do |t|
      t.string :plano

      t.timestamps
    end
  end
end

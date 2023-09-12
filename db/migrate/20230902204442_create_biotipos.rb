class CreateBiotipos < ActiveRecord::Migration[7.0]
  def change
    create_table :biotipos do |t|
      t.string :biotipo

      t.timestamps
    end
  end
end

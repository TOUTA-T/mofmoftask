class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :fee
      t.string :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end

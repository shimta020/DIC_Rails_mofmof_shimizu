class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :name
      t.integer :rent
      t.text :address
      t.integer :age
      t.text :notes

      t.timestamps
    end
  end
end

class CreateShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.string :adress
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :logo
      t.string :description

      t.timestamps
    end

    add_index :shops, :name
    add_index :shops, :adress
    add_index :shops, :phone
  end

  def self.down
    drop_table :shops
  end
end

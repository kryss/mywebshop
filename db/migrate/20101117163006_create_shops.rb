class CreateShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip_code
      t.string :country
      t.string :phone
      t.string :logo
      t.string :description
      t.integer :user_id

      t.timestamps
    end

    add_index :shops, :name
    add_index :shops, :address
    add_index :shops, :phone
    add_index :shops, :user_id
  end

  def self.down
    drop_table :shops
  end
end

class AddInformationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :phone, :string
    add_column :users, :language, :string
    add_column :users, :address, :string
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :zip_code, :string

    add_index :users, :name
    add_index :users, :address
  end

  def self.down
    remove_column :users, :zip_code
    remove_column :users, :country
    remove_column :users, :city
    remove_column :users, :name
    remove_column :users, :address
    remove_column :users, :language
    remove_column :users, :phone
  end
end

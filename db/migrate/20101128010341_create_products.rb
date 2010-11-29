class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :reference
      t.string :description
      t.integer :collection_id

      t.timestamps
    end
    
    add_index :products, :name
    add_index :products, :reference
    add_index :products, :description
    
  end

  def self.down
    drop_table :products
  end
end

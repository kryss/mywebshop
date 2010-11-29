class CreateCollections < ActiveRecord::Migration
  def self.up
    create_table :collections do |t|
      t.string :name
      t.boolean :is_private
      t.integer :photo_id, :default => -1
      t.string :description
      t.integer :shop_id

      t.timestamps
    end
    add_index :collections, :name
  
  end



  def self.down
    drop_table :collections
  end
end

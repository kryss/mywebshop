# == Schema Information
# Schema version: 20101128010710
#
# Table name: products
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  reference     :string(255)
#  description   :string(255)
#  collection_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Product < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true
end

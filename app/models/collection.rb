# == Schema Information
# Schema version: 20101128010710
#
# Table name: collections
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  is_private  :boolean
#  photo_id    :integer         default(-1)
#  description :string(255)
#  shop_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Collection < ActiveRecord::Base
  belongs_to :shop
  has_many :products, :dependent => :destroy

end

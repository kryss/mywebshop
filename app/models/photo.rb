# == Schema Information
# Schema version: 20101128010710
#
# Table name: photos
#
#  id                :integer         not null, primary key
#  product_id        :integer
#  created_at        :datetime
#  updated_at        :datetime
#  data_file_name    :string(255)
#  data_content_type :string(255)
#  data_file_size    :integer
#  data_updated_at   :datetime
#

class Photo < ActiveRecord::Base
  belongs_to :product
  has_attached_file :data, :styles => {:small => "150x150>"}  

end

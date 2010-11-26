# == Schema Information
# Schema version: 20101117163006
#
# Table name: shops
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  address     :string(255)
#  city        :string(255)
#  zip_code    :string(255)
#  country     :string(255)
#  phone       :string(255)
#  logo        :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Shop < ActiveRecord::Base
  belongs_to :user
end

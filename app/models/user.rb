# == Schema Information
# Schema version: 20101116013227
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer         default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  is_seller            :boolean
#  phone                :string(255)
#  language             :string(255)
#  address              :string(255)
#  name                 :string(255)
#  city                 :string(255)
#  country              :string(255)
#  zip_code             :string(255)
#

class User < ActiveRecord::Base
  has_one :shop
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :is_seller
  attr_accessible :name, :phone, :language, :address, :city, :country, :zip_code


  $countries = %w[France Italie Chine]
  $languages = %w[French Italian Chinese]

end

class Color < ActiveRecord::Base
  has_many :arrangements_color
  has_many :arrangement, through: :arrangements_color
end

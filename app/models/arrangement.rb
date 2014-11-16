class Arrangement < ActiveRecord::Base
  belongs_to :mood
  has_many :arrangements_color
  has_many :recipe
end

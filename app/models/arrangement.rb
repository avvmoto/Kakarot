class Arrangement < ActiveRecord::Base
  belongs_to :mood
  has_and_belongs_to_many :color
  has_many :recipe
end

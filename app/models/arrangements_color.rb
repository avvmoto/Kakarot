class ArrangementsColor < ActiveRecord::Base
  belongs_to :color
  belongs_to :arrangement

  delegate :weight, to: :color
end

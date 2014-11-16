class Recipe < ActiveRecord::Base
  belongs_to :arrangement
  def image_path
    
  end
end

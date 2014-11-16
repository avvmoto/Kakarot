class Recipe < ActiveRecord::Base
  belongs_to :arrangement
  def image_asset
    return nil if image_uri.nil?
    'recipe/' + image_uri.split('/')[-1]
  end
end

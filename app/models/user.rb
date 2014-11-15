class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def self.create_with_omniauth(auth)
    create! do |user|
      user.twitter_id = auth['uid']
    end
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :trackable, :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  #

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:twitter_id => auth.uid).first
    unless user
      user = User.create(twitter_id:auth.uid, email: "sample@gmail.com", encrypted_password: "asdfghjklzxcvbnm")
    end
    user
  end
end

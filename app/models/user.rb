class User < ActiveRecord::Base

  has_many :posts

  attr_accessible :name, :provider, :uid

  def self.create_from_omniauth(auth)
    if auth["provider"] == "twitter"
      create! do |user|
        user.provider = auth["provider"]
        user.uid      = auth["uid"]
        user.name     = auth["info"]["name"]
      end
    else
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
        user.provider         = auth.provider
        user.uid              = auth.uid
        user.name             = auth.info.name
        user.oauth_token      = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.save!
      end
    end
  end

end

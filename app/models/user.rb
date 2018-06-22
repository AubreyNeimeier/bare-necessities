class User < ApplicationRecord
    has_many :events 
    has_many :tasks, through: :events
    has_secure_password 
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true

    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.name = auth.info.name
          user.oauth_token = auth.credentials.token
          user.oauth_expires_at = Time.at(auth.credentials.expires_at)
          user.save!
        end
      end
end

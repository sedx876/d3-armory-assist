class User < ActiveRecord::Base
    has_secure_password
    has_many :user_items
    has_many :builds, through: :user_builds
end

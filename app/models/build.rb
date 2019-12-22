class Build < ActiveRecord::Base
    belongs_to :user
    has_many :user_builds
    has_many :users, through: :user_build
end

class UserBuild < ActiveRecord::Base
    belongs_to :user
    belongs_to :build
end

class ForumPost < ApplicationRecord
    has_many :Comment
    has_many :RepairOffer
    has_one :Role
end

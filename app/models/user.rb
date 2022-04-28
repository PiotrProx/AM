class User < ApplicationRecord
    has_many :ForumPost
    has_many :Comment
    has_many :RepairOffer
    has_many :Role

    has_secure_password

    validates :eMail, presence: true, uniqueness: true, length: { in: 3..50 }
    validates :login, presence: true, uniqueness: true, length: { in: 3..50 }
    validates :nickName, presence: true, uniqueness: true, length: { in: 3..50 }
    validates :password, presence: true, length: { minimum: 6 }
end

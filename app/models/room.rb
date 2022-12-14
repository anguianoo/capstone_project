class Room < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :users, through: :messages

    has_many :room_users, dependent: :destroy
    has_many :users, through: :room_users
    validates :name, presence: :true
    validates_uniqueness_of :name

    # has many users through
end

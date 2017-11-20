class Chatroom < ApplicationRecord
	validates :topic, presence: true, uniqueness: true
	has_many :messaages, dependent: :destroy
	has_many :users, through: :messages
end

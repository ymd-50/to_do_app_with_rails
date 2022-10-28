class Todo < ApplicationRecord
    before_create -> { self.id = SecureRandom.uuid.split("-").join }
    validates :title, presence: true
    belongs_to :user
end

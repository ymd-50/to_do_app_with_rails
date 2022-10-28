class User < ApplicationRecord
    before_create -> { self.id = SecureRandom.uuid.split("-").join }
    has_many :todo
end

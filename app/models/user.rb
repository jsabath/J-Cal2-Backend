class User < ApplicationRecord
    has_one :calendar
    has_many :events
end

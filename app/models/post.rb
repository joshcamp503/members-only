class Post < ApplicationRecord
  validates :subject, presence: true, length: { maximum: 255 }
end

class Post < ApplicationRecord
  belongs_to :user
  validates :subject, presence: true, length: { maximum: 255 }

end

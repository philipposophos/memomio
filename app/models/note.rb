class Note < ApplicationRecord
  belongs_to :memory

  validates :content, presence: true
end

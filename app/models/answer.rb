class Answer < ApplicationRecord
  belongs_to :poll
  has_many :votes, dependent: :destroy
  validates :answer_content, presence: true, length: { maximum: 50 }
end

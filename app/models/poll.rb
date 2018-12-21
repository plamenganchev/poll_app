class Poll < ApplicationRecord
  
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers,reject_if: :all_blank, allow_destroy: true
  has_many :votes, dependent: :destroy
  
  validates :question, presence: true, length: { maximum: 50 }
end

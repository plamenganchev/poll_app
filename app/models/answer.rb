class Answer < ApplicationRecord
  belongs_to :poll
  has_many :votes, dependent: :destroy
  #has_many :polls, through: :votes
end

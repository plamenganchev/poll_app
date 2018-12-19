class Poll < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :ip_checks, dependent: :destroy
  accepts_nested_attributes_for :answers
end

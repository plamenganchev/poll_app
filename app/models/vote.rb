require 'resolv'
class Vote < ApplicationRecord
  belongs_to :poll
  belongs_to :answer
  
  validates :voter_ip, length: { maximum: 15}, presence: true, ip_format: true
  validates :answer_id, presence: true
  validates :poll_id, presence: true
end

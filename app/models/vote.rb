class Vote < ApplicationRecord
  require 'resolv'
  belongs_to :poll
  belongs_to :answer
  validates :voter_ip, length: { maximum: 15}
 

end

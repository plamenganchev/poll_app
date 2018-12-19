class IpCheck < ApplicationRecord
  belongs_to :poll
  
  validates :ip_adress, presence: true, length: { maximum: 15 },
                        uniqueness:  true 
end


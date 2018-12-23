class Poll < ApplicationRecord
  
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers,reject_if: :all_blank, allow_destroy: true
  has_many :votes, dependent: :destroy
  
  validates :question, presence: true, length: { maximum: 50 }
  validates :share_token, uniqueness: true
  before_create :create_share_token
  
  
  
  class << self
    
   def new_token
     SecureRandom.urlsafe_base64
   end
   
  end#End Of Self
  
  private
   def create_share_token
     self.share_token = Poll.new_token
   end
  
end

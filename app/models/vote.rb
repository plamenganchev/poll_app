class Vote < ApplicationRecord
  belongs_to :poll
  belongs_to :answer
  
end

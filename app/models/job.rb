class Job < ApplicationRecord
  belongs_to :companies
  belongs_to :user

end

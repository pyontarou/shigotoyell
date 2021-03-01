class Job < ApplicationRecord
  belongs_to :company
  # belongs_to :user

  with_options presence: true do
    validates :job_description
    validates :qualification
    validates :workplace
    validates :salary
    validates :bonus
    validates :working_hours
  end  

  with_options numericality: { other_than: 1 } do
    validates :recruitment_type_id
    validates :employment_status_id
    validates :holiday_id
    validates :experience＿id
    validates :educational_background_id
    validates :age_requirements_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :recruitment_type
  belongs_to :employment_status
  belongs_to :holiday
  belongs_to :experience
  belongs_to :educational_background
  belongs_to :age_requirements

end

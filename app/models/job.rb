class Job < ApplicationRecord
  belongs_to :companies
  belongs_to :user

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

  

end

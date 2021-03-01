FactoryBot.define do
  factory :job do
    recruitment_type_id {2}
    job_description {Faker::Lorem.sentence}
    qualification {Faker::Lorem.sentence}
    workplace {"東京都"}
    salary {"20万円"}
    bonus {"年２回"}
    employment_status_id {2}
    working_hours{"9:00~17:00"}
    holiday_id {2}
    experience_id {2}
    educational_background_id {2}
    age_requirements_id {2}
    association :company
  end
end

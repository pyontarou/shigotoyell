class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :recruitment_type_id,       null: false
      t.text    :job_description,           null: false
      t.text    :qualification,             null: false
      t.string  :workplace,                 null: false
      t.string  :salary,                    null: false
      t.string  :bonus,                     null: false
      t.integer :employment_status_id,      null: false
      t.string  :working_hours,             null: false
      t.integer :holiday_id,                null: false
      t.integer :experience＿id,            null: false
      t.integer :educational_background_id, null: false
      t.integer :age_requirements_id,       null: false
      t.references  :company,               null: false, foreign_key: true 

      t.timestamps
    end
  end
end

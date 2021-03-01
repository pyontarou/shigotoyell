require 'rails_helper'

describe Job do
  before do
    @job = FactoryBot.build(:job)
  end

  describe '求人投稿' do
    context '求人投稿ができるとき' do
      it 'recruitment_type_idとjob_descriptionとqualificationとworkplaceとsalaryとbonusとemployment_status_idとworking_hoursとholiday_idとexperience_idとeducational_background_idとage_requirements_idがあれば投稿できること' do
        expect(@job).to be_valid
      end
    end
    context '求人投稿ができないとき' do
      it 'recruitment_type_idが未選択(id=1)投稿できない' do
        @job.recruitment_type_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Recruitment type must be other than 1")
      end
      it 'employment_status_idが未選択(id=1)投稿できない' do
        @job.employment_status_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Employment status must be other than 1")
      end
      it 'holiday_idが未選択(id=1)投稿できない' do
        @job.holiday_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Holiday must be other than 1")
      end
      it 'experience_idが未選択(id=1)投稿できない' do
        @job.experience_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Experience must be other than 1")
      end
      it 'educational_background_idが未選択(id=1)投稿できない' do
        @job.educational_background_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Educational background must be other than 1")
      end
      it 'age_requirements_idが未選択(id=1)投稿できない' do
        @job.age_requirements_id = 1
        @job.valid?
        expect(@job.errors.full_messages).to include("Age requirements must be other than 1")
      end
      it 'job_descriptionが空では投稿できない' do
        @job.job_description = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Job description can't be blank")
      end
      it 'qualificationが空では投稿できない' do
        @job.qualification = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Qualification can't be blank")
      end
      it 'workplaceが空では投稿できない' do
        @job.workplace = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Workplace can't be blank")
      end
      it 'salaryが空では投稿できない' do
        @job.salary = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Salary can't be blank")
      end
      it 'bonusが空では投稿できない' do
        @job.bonus = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Bonus can't be blank")
      end
      it 'working_hoursが空では投稿できない' do
        @job.working_hours = ""
        @job.valid?
        expect(@job.errors.full_messages).to include("Working hours can't be blank")
      end
    end
  end
end
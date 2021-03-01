class EducationalBackground < ActiveHash::Base
  self.data = [ {id: 1, name: '--' },{id: 2, name: '不問'}, {id: 3, name: '高校卒業以上'}, {id: 4, name: '専修学校卒業以上'},{id: 5, name: '短期大学卒業以上'}, {id: 6, name: '大学卒業以上'}, {id: 7, name: '修士卒業以上'},{id: 8, name: '博士卒業以上'}]

    include ActiveHash::Associations
    has_many :jobs
end
class EmploymentStatus < ActiveHash::Base
  self.data = [ {id: 1, name: '--' },{id: 2, name: '正社員'}, {id: 3, name: '契約社員'}, {id: 4, name: '業務委託'},{id: 5, name: '派遣'}, {id: 6, name: 'パート・アルバイト'}, {id: 7, name: '紹介予定派遣'},
    {id: 8, name: 'FCオーナー'}, {id: 9, name: 'その他'}]

    include ActiveHash::Associations
    has_many :jobs
end
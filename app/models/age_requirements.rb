class AgeRequirements < ActiveHash::Base
  self.data = [ {id: 1, name: '--' },{id: 2, name: '年齢制限なし'}, {id: 3, name: '59歳以下'}, {id: 4, name: '55歳以下'},{id: 5, name: '50歳以下'}, {id: 6, name: '45歳以下'}, {id: 7, name: '40歳以下'},
    {id: 8, name: '35歳以下'}, {id: 9, name: '30歳以下'}, {id: 10, name: '25歳以下'},
    {id: 11, name: 'その他'}]

    include ActiveHash::Associations
    has_many :jobs
end
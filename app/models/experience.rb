class Experience < ActiveHash::Base
  self.data = [ {id: 1, name: '--' },{id: 2, name: '未経験者歓迎'}, {id: 3, name: '未経験者可'}, {id: 4, name: '未経験者不可'}]

    include ActiveHash::Associations
    has_many :jobs
end
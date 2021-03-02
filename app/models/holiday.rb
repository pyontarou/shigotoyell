class Holiday < ActiveHash::Base
  self.data = [ {id: 1, name: '--' },{id: 2, name: '週休二日制（毎週土日祝）'}, {id: 3, name: '週休二日制（隔週土日祝）'}, {id: 4, name: '週休二日制（平日）'},{id: 5, name: 'シフト制'}, {id: 6, name: 'その他'}]

    include ActiveHash::Associations
    has_many :jobs
end
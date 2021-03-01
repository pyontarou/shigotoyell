class RecruitmentType < ActiveHash::Base
  self.data = [ {id: 1, name: '--' },{id: 2, name: '事務・管理職'}, {id: 3, name: '営業'}, {id: 4, name: '販売・サービス'},{id: 5, name: '接客・理美容・調理'}, {id: 6, name: '介護・福祉'}, {id: 7, name: '保育・教育'},
    {id: 8, name: '医療・看護・保健'}, {id: 9, name: '製造'}, {id: 10, name: '修理・保全・検査'},
    {id: 11, name: '技術職（建設）'}, {id: 12, name: '技術職（開発・IT）'}, {id: 13, name: '専門職・研究'},
    {id: 14, name: '建築・土木・電気工事'}, {id: 15, name: '警備・施設管理'}, {id: 16, name: '運輸（運転）・配送'},
    {id: 17, name: '清掃・洗浄'}, {id: 18, name: '倉庫・包装・軽作業'}, {id: 19, name: '農業・林業・漁業'},
    {id: 20, name: 'その他'}]

    include ActiveHash::Associations
    has_many :jobs
end
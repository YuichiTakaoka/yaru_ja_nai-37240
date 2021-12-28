class Depertment < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '役職無し' },
    { id: 3, name: '病棟or外来or施設主任' },
    { id: 4, name: '病棟or外来or施設師長' },
    { id: 5, name: '看護副総師長' },
    { id: 6, name: '看護総師長' },
    { id: 7, name: '看護部長' },
    { id: 8, name: '訪問看護ST管理者' },
  ]

  include ActiveHash::Associations
  has_many :profiles
end
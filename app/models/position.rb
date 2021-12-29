class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1年未満' },
    { id: 3, name: '2~3年目' },
    { id: 4, name: '4~6年目' },
    { id: 5, name: '7~9年目' },
    { id: 6, name: '10~14年目' },
    { id: 7, name: '15年目以上' }
  ]

  include ActiveHash::Associations
  has_many :profiles
end

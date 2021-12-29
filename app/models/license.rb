class License < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1~2' },
    { id: 3, name: '3~4' },
    { id: 4, name: '5~6' },
    { id: 5, name: '7~9' },
    { id: 6, name: '10以上' },
  ]

  include ActiveHash::Associations
  has_many :profiles
end
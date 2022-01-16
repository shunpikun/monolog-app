class Frequency < ActiveHash::Base
  self.data = [
    { id: 1, name: '毎日使用する' },
    { id: 2, name: '2〜3日に1回使用する' },
    { id: 3, name: '週に１回ほど使用する' },
    { id: 4, name: '月に１回ほど使用する' },
    { id: 5, name: '年に１回ほど使用する' }
  ]

  include ActiveHash::Associations
  has_many :properties
end
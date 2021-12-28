class Division < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '部署経験2ヶ所未満' },
    { id: 3, name: '部署経験3~5ヶ所' },
    { id: 4, name: '部署経験6~9ヶ所' },
    { id: 5, name: '部署経験10ヶ所以上' },
  ]
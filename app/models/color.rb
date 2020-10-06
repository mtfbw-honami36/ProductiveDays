class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: 'ブルー' },
    { id: 3, name: 'グリーン' },
    { id: 4, name: 'ブラウン' },
    { id: 5, name: 'オレンジ' },
    { id: 6, name: 'パープル' },
    { id: 7, name: 'ピンク' }
  ]
end

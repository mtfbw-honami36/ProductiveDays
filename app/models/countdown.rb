class Countdown < ActiveHash::Base
  self.data = [
   { id: 1, name: '選択してください' },
   { id: 2, name: 'カウントダウンしない' },
   { id: 3, name: 'カウントダウンする' }
 ]
end

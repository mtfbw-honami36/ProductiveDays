class Countdown < ActiveHash::Base
  self.data = [
   { id: 1, name: 'カウントダウンする' },
   { id: 2, name: 'カウントダウンしない' }
 ]
end

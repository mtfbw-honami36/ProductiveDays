require 'rails_helper'

RSpec.describe Todo, type: :model do
  before do
    @todo = FactoryBot.build(:todo)
  end

  describe '予定登録' do
    it 'Todoの名前があれば保存できること' do
      expect(@todo).to be_valid
    end

    it 'nameが空では保存できないこと' do
      @todo.name = nil
      @todo.valid?
      expect(@todo.errors.full_messages).to include("Nameを入力してください")
    end

    it '紐づくユーザーが存在しないと保存できないこと' do
      @todo.user = nil
      @todo.valid?
      expect(@todo.errors.full_messages).to include("Userを入力してください")
    end
  end
end

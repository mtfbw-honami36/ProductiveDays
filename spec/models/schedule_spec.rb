require 'rails_helper'

RSpec.describe Schedule, type: :model do
  before do
    @schedule = FactoryBot.build(:schedule)
  end

  describe '予定登録' do
    it 'フォームが全て埋まっていれば保存できること' do
      expect(@schedule).to be_valid
    end

    it 'nameが空では保存できないこと' do
      @schedule.name = nil
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Nameを入力してください")
    end

    it 'start_timeが空では保存できないこと' do
      @schedule.start_time = nil
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Start timeを入力してください")
    end

    it 'countdownが選択されていないと保存できないこと' do
      @schedule.countdown_id = 1
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Countdownを選択してください")
    end

    it 'colorが選択されていないと保存できないこと' do
      @schedule.color_id = 1
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Colorを選択してください")
    end

    it '紐づくユーザーが存在しないと保存できないこと' do
      @schedule.user = nil
      @schedule.valid?
      expect(@schedule.errors.full_messages).to include("Userを入力してください")
    end
  end
end

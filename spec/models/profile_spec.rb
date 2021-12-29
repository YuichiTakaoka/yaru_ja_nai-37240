require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    @profile = FactoryBot.build(:profile)
  end
  describe 'プロフィール情報入力' do
    context 'プロフィールが登録できること' do
      it '全ての記述が正しく入力されている' do
        expect(@profile).to be_valid
      end
      it '得意分野が入力されていなくても登録できること' do
        @profile.strength = nil
        expect(@profile).to be_valid
      end
      it '苦手分野が入力されていなくても登録できること' do
        @profile.weakness = nil
        expect(@profile).to be_valid
      end
    end

    context 'プロフィールが登録できないとき' do
      it '画像が無いと登録できない' do
        @profile.image = nil
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Image can't be blank")
      end
      it '名前が空だと登録できない' do
        @profile.name = nil
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Name can't be blank")
      end
      it '自己紹介が空だと登録できない' do
        @profile.consept = nil
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Consept can't be blank")
      end
      it '経験年数を選択していないと登録できない' do
        @profile.position_id = 1
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Position can't be blank")
      end
      it '役職経験を選択していないと登録できない' do
        @profile.depertment_id = 1
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Depertment can't be blank")
      end
      it '経験部署数を選択していないと登録できない' do
        @profile.division_id = 1
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Division can't be blank")
      end
      it '保有資格数を選択していないと登録できない' do
        @profile.license_id = 1
        @profile.valid?
        expect(@profile.errors.full_messages).to include("License can't be blank")
      end
      it 'userが紐付いていなければ出品できない' do
        @profile.user = nil
        @profile.valid?
        expect(@profile.errors.full_messages).to include('User must exist')
      end
    end
  end
end

require 'rails_helper'

RSpec.describe Property, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @property = FactoryBot.build(:property)
  end

  describe '物登録機能' do
    context '物が登録できる場合' do
      it 'すべての値が正しく入力されていれば登録できること' do
        expect(@property).to be_valid
      end
    end

    context '物が登録できない場合' do
      it 'nameが空では登録できないこと' do
        @property.name = ''
        @property.valid?
        expect(@property.errors.full_messages).to include("Name can't be blank")
      end

      it 'infoが空では登録できないこと' do
        @property.info = ''
        @property.valid?
        expect(@property.errors.full_messages).to include("Info can't be blank")
      end

      it 'frenquency_idが空では登録できないこと' do
        @property.frequency_id = nil
        @property.valid?
        expect(@property.errors.full_messages).to include("Frequency can't be blank")
      end

      it 'storageが空では登録できないこと' do
        @property.storage = ''
        @property.valid?
        expect(@property.errors.full_messages).to include("Storage can't be blank")
      end

      it 'imageが空では登録できないこと' do
        @property.image = nil
        @property.valid?
        expect(@property.errors.full_messages).to include("Image can't be blank")
      end

      it 'userが紐付いていないと登録できない' do
        @property.user = nil
        @property.valid?
        expect(@property.errors.full_messages).to include('User must exist')
      end
    end
  end
end

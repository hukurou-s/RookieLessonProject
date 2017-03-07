# coding: utf-8
describe User, type: :model do
  let(:saved_user) do
    User.create(
      name: 'ほげ',
      grade: 'Semi2999',
      snum: '14T200',
      account: 'hoge',
      password: Digest::SHA256.hexdigest('hogehoge'),
      password_confirmation: Digest::SHA256.hexdigest('hogehoge'),
      is_admin: true
    )

  end

  let(:new_user) do
    User.new(
      name: 'ふが',
      grade: 'Semi2999',
      snum: '14T299',
      account: 'huge',
      password: Digest::SHA256.hexdigest('hugehuge'),
      password_confirmation: Digest::SHA256.hexdigest('hugehuge'),
      is_admin: true
    )
  end


  context '全てのカラムが適切の場合' do
    it '正常に保存できる' do
      expect(new_user.save).to eq true
    end
  end


  describe '.snum' do
    context 'nilの場合' do
      it '保存できない' do
        new_user.snum = nil
        expect{new_user.save}.to raise_error(ActiveRecord::StatementInvalid)
      end
    end

    context '重複している場合' do
      it 'バリデーションチェックが通らない' do
        new_user.snum = saved_user.snum
        expect(new_user.valid?).to eq false
        expect(new_user.errors.messages.keys.first).to eq :snum
      end
    end
  end
end

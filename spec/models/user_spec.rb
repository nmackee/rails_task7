require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示"
  # 共通するパラメータを定義
    let(:params) {{name: "satoru"}}
    
    it "年齢１：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "satoruちゃん"
    end

    it "年齢15:ユーザーの名前が取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "satoru君"
    end

    it "年齢20:ユーザーの名前が取得できること" do
      params.merge!(age: 30)
      user = User.new(params)
      expect(user.disp_name).to eq "satoruさん"
    end

    it "年齢-2: ユーザーの名前が取得できること" do
      params.merge!(age: -2)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な数値です"
    end
end

# -*- coding: utf-8 -*-
require 'vender_machine'
require 'money_type'

describe '自動販売機のテスト'  do
  before(:each) do
    @vender_machine = VenderMachine.new
  end

  context "お金を投入してない場合" do
    it '総計がゼロ円であること' do
      @vender_machine.total_amount.should == 0
    end
  end

  context "有効な金種を投入した場合" do
    before(:each) do
      @vender_machine.insert(10)
      @vender_machine.insert(100)
    end

    it '総計が１１０円として取得できること' do
      @vender_machine.total_amount.should == 110
    end

    it '払い戻された金額が総計であること' do
      @vender_machine.payback.should == 110
    end

    it '払い戻し後の総計が０になること' do
      @vender_machine.payback
      @vender_machine.total_amount.should == 0
    end

    MoneyType::OK_COIN.each do |coin|
      it "#{coin}円を投入した時つり銭が０円であること" do
        @vender_machine.insert(coin).should == 0
      end
    end
  end

  context "無効な金種を投入した場合" do
    before(:each) do
      @vender_machine.insert(1)
      @vender_machine.insert(5)
    end

    it '総計に加算されないこと' do
      @vender_machine.total_amount.should == 0
    end

    it 'つり銭が１円であること' do
      @vender_machine.insert(1).should == 1
    end
    it 'つり銭が５円であること' do
      @vender_machine.insert(5).should == 5
    end
  end

end

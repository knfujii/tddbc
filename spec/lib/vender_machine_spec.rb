# -*- coding: utf-8 -*-
require 'vender_machine'

describe '自動販売機のテスト'  do
  before(:each) do
    @vender_machine = VenderMachine.new
  end
  
  it '統計を取得できること' do
    @vender_machine.total_amount.should == 0
  end

  context "１０円と１００円を投入した場合" do
    before(:each) do
      @vender_machine.insert(10)
      @vender_machine.insert(100)
    end

    it '総計が１１０円として取得できること' do
      @vender_machine.total_amount.should == 110
    end
    
    it '払い戻された金額が１１０円' do
      @vender_machine.payback.should == 110
    end
    
    it '払い戻し後の総計が０になること' do
      @vender_machine.payback
      @vender_machine.total_amount.should == 0
    end
  end
  
end

require "money_type"

class VenderMachine
  def initialize
    @total_amount = 0
  end
  
  def total_amount
    @total_amount
  end

  def insert(money)
    change = 0 
    if ok_coin?(money)
      @total_amount += money
    else
      change = money
    end
    change
  end
  
  def payback
    payback_money = @total_amount
    @total_amount = 0
    payback_money
  end
  
  def ok_coin?(money)
    MoneyType::OK_COIN.include?(money)    
  end
  
end

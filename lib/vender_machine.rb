class VenderMachine
  def initialize
    @total_amount = 0
  end
  
  def total_amount
    @total_amount
  end

  def insert(money)
    @total_amount += money
  end
  
  def payback
    payback_money = @total_amount
    @total_amount = 0
    payback_money
  end

end

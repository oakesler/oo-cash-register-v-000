require "pry"

class CashRegister
  attr_accessor :total, :discount
  
  #@@count = 0 
  
  
  def initialize(total = 0.0, discount = 0)
    @total = total
    @discount = discount
    #@@count += 1
  end
end

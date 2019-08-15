require "pry"

class CashRegister
  attr_accessor :total, :discount
  
  #@@count = 0 
  @@last_total = 0 
  @@total = 0 
  
  
  
  def initialize(discount = nil)
    @total = total
    @discount = discount
    
    @total = 0
    @@total = @total
    
    #@@count += 1
  end
  
  
  def add_item(title, price, quanitity = 1) 
    @total = total
    @@last_total << @total
    self.total += price * quanitity
  end
  
  def apply_discount(discount = @discount)
    @total = total
    if @discount == nil 
      "There is no discount to apply."
      #binding.pry
    else 
      float_discount = discount / 100.0
      discounted_total = @total - (float_discount * @total)
      @total = discounted_total
      "After the discount, the total comes to $#{discounted_total.to_int}."
    end
  end
end


require "pry"
class CashRegister
  attr_accessor :total, :discount
  
  #@@count = 0 
  @@last_total = 0 
  #@@titles_array = []
  
  
  def initialize(discount = nil)
    @total = total
    @discount = discount
    @total = 0
    @@titles_array = []
    #@@count += 1
  end
  
  def add_item(title, price, quantity = 1) 
    x = 0 
    @total = total
    if x < quantity
      @@titles_array << title
      x += 1
      else
        @@last_total << @total
        self.total += price * quantity
      end
    end
 
  
  def apply_discount(discount = @discount)
    @total = total
    if @discount == nil 
      "There is no discount to apply."
    else 
      float_discount = discount / 100.0
      discounted_total = @total - (float_discount * @total)
      @total = discounted_total
      "After the discount, the total comes to $#{discounted_total.to_int}."
    end
  end
  
  def items
    @@titles_array
  end
end



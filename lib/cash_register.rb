require "pry"

# Build a cash register 
#sets an instance variable @total on initialization to zero'

class CashRegister
  
  attr_accessor :total, :item, :discount, :title, :price
  
  
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_hash = {}
    @item_array = []
  end
  
  
  
  def add_item(title, price, quantity = nil)
    @title = title
    @price = price
    @quantity = quantity
    @item_hash[@title] = @price
      if quantity == nil
      @total = @total + price
      
      else
        @total = @total + (price * quantity)
      end
  end
  
  
  
  def apply_discount
    if @discount > 0 
      @total = @total - ((@discount.to_f / 100)*@price)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
    
  end
  
  def total
  @total 
  end
  
  def items
    @item_hash.each do |product, price|
      if product.quantity == nil 
      @item_array << product
      else
      @quantity.times {@item_array << product}
      end
    end
    @item_array
  end
  
  def void_last_transaction
  end
  
end





#add items with varying quantites & prices=>{}
#Calculate discounts => Discounts of the TOTAL PRICE.  Not of a particular item.
#Keep track of what's been added 
#Void the last transaction

class AmazonTransaction

  attr_accessor :items, :discount, :total

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount.to_f
  end
  
  def add_item(title, price, quantity =1)
    @total += price*quantity
    for i in 0..quantity - 1
      @items << title
  end
  
 
  def apply_discount
    @total = (@total-((@discount/100.00)*@total))
  end
end

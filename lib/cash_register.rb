class CashRegister
    attr_accessor :total, :items, :discount, :last_item

    def initialize(discount = 0)
      @total = 0
      @items = []
      @discount = discount
    end

    def add_item(title, price, quantity = 1)
      @last_item = {items: @items, total: @total }
      quantity.times { @items << title }
      @total += price * quantity
    end

    def apply_discount
        if @discount != 0
          @total = @total - (@total * @discount / 100)
          "After the discount, the total comes to $#{total}."
        else
          "There is no discount to apply."    
        end
    end

    def void_last_transaction
      @items = @last_item[:items]
      @total = @last_item[:total]
    end


  end


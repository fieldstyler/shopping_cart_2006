class ShoppingCart

  attr_reader :name, :capacity, :products
  def initialize(store_name, cart_capacity)
    @name = store_name
    @capacity = cart_capacity.to_i
    @products = []

  end

  def add_product(product)
    @products << product
    # product.quantity
  end

  def products
    @products
  end

  def details
    "{name: '#{@name}', capacity: #{@capacity}}"
  end

  def total_number_of_products
    @products.count 
  end

  # def is_full?
  #   total = @products.quantity
  #   if total >= @capacity
  #     true
  #   else
  #     false
  #   end

  # end
end

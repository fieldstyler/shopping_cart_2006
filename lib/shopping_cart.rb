class ShoppingCart

  attr_reader :name, :capacity, :products
  def initialize(store_name, cart_capacity)
    @name = store_name
    @capacity = cart_capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def products
    @products
  end

  def details
    "{name: '#{@name}', capacity: #{@capacity}}"
  end
end

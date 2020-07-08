require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test

  def test_it_exists
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    assert_instance_of ShoppingCart, shopping_cart
  end

  def test_store_has_a_name
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    assert_equal 'King Soopers', shopping_cart.name
  end

  def test_cart_has_a_capacity
    # skip
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    assert_equal 30, shopping_cart.capacity
  end

  def test_cart_has_products_inside_of_it
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    assert_equal [], shopping_cart.products
  end



end

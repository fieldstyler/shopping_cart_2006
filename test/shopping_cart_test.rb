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

  def test_can_add_products_to_cart_and_check_them
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    assert_equal [], shopping_cart.products
    assert_equal [product1], shopping_cart.add_product(product1)
    assert_equal [product1], shopping_cart.products
    assert_equal [product1, product2], shopping_cart.add_product(product2)
    assert_equal [product1, product2], shopping_cart.products
  end

  def test_it_can_check_details
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    # require "pry"; binding.pry
    assert_equal "{name: 'King Soopers', capacity: 30}", shopping_cart.details
  end

  def test_it_can_count_total_number_of_products
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    assert_equal [], shopping_cart.products
    assert_equal 0, shopping_cart.total_number_of_products
    assert_equal [product1], shopping_cart.add_product(product1)
    assert_equal [product1], shopping_cart.products
    assert_equal 10, shopping_cart.total_number_of_products
    assert_equal [product1, product2], shopping_cart.add_product(product2)
    assert_equal [product1, product2], shopping_cart.products
    assert_equal 2, shopping_cart.total_number_of_products
  end


  def test_if_cart_is_at_capacity
    shopping_cart = ShoppingCart.new('King Soopers', '30items')
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')
    skip
    assert_equal false, shopping_cart.is_full?
  end
end

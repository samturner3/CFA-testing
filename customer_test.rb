require 'test/unit'
require_relative 'customer'

class CustomerTest < Test::Unit::TestCase

  def test_full_name
    customer = Customer.new("Nick", "Wu")
    actual = customer.full_name
    expected = "Nick Wu"
    message = "Full Name Should Be Nick Wu"
    assert_equal(expected, actual, message)
  end

  def test_full_name_only_first_name
    # Set up the test data
    customer = Customer.new("Adele", "")
    actual = customer.full_name
    # expected results
    expected = "Adele"
    # assertion
    assert_equal("Adele", customer.full_name, "Customer name should be 'Adele'")
  end

  def test_full_name_with_spaces
    # Set up the test data
    customer = Customer.new("John    ", "Smith")
    actual = customer.full_name
    # expected results
    expected = "John Smith"
    # assertion
    assert_equal("John Smith", customer.full_name, "Customer name should be not have additional spaces")
  end

end

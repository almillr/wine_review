require 'test_helper'

class WineTest < ActiveSupport::TestCase

  def setup
    @wine = Wine.new
  end

  test 'name remembers its value' do
    @wine.name = 'Midsummer Dream'
    assert_equal 'Midsummer Dream', @wine.name
  end

  test 'winery remembers its value' do
    @wine.winery = 'White Dove'
    assert_equal 'White Dove', @wine.winery
  end

  test 'country remembers its value' do
    @wine.country = 'USA'
    assert_equal 'USA', @wine.country
  end

  test 'year remembers its value' do
    @wine.year = 2010
    assert_equal 2010, @wine.year
  end

  test 'varietal remembers its value' do
    @wine.varietal = 'Cabernet Sauvignon'
    assert_equal 'Cabernet Sauvignon', @wine.varietal
  end

  test 'persistence works properly' do
    created_wine = Wine.new(name: 'Roaring Fire', winery: 'Big Sky', country: 'USA', year: 2008, varietal: 'Merlot')
    created_wine.save!
    found_wine = Wine.find(created_wine.id)
    assert_not_nil found_wine
    assert_equal 'Roaring Fire', found_wine.name
    assert_equal 'Big Sky', found_wine.winery
    assert_equal 'USA', found_wine.country
    assert_equal 2008, found_wine.year
    assert_equal 'Merlot', found_wine.varietal
    assert_throws(:expected) {  }
  end

  test "update from a fixture" do
    wine = wines(:midsummer)
    print wine.year
    delta = 1
    assert_in_delta 2010, wine.year, delta
    wine.year = 2013
    wine.save
    updated = Wine.find(wine.id)
    assert_in_delta 2013, updated.year, delta
  end

  # test "the truth" do
  #   assert true
  # end
end
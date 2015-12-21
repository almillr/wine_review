require 'test_helper'

class LogEntryTest < ActiveSupport::TestCase
  def setup
    @log_entry = LogEntry.new
    @date = Date.today
  end

  test 'name remembers its value' do
    @log_entry.name = 'Anita Miller'
    assert_equal 'Anita Miller', @log_entry.name
  end

  test 'rating remembers its value' do
    @log_entry.rating = 5
    assert_equal 5, @log_entry.rating
  end

  test 'location remembers its value' do
    @log_entry.location = 'USA'
    assert_equal 'USA', @log_entry.location
  end

  test 'comments remembers its value' do
    @log_entry.comments = 'The wine was very tasty.  Nice body and very aromatic.'
    assert_equal 'The wine was very tasty.  Nice body and very aromatic.', @log_entry.comments
  end

  test 'tasted on remembers its value' do
    @log_entry.tasted_on = @date
    assert_equal @date, @log_entry.tasted_on
  end

  test 'persistence works properly' do
    created_log_entry = LogEntry.new(name: 'Anita Miller', rating: 1, location: 'USA', comments: 'Nasty tasting.', tasted_on: @date )
    created_log_entry.save!
    found_log_entry = log_entry.find(created_log_entry.id)
    assert_not_nil found_log_entry
    assert_equal 'Anita Miller', found_log_entry.name
    assert_equal 1, found_log_entry.rating
    assert_equal 'USA', found_log_entry.country
    assert_equal 'Nasty tasting.', found_log_entry.comments
    assert_equal @date, found_log_entry.tasted_on
    assert_throws(:expected) {  }
  end

  test "update from a fixture" do
    log_entry = log_entries(:bob_smith)
    print log_entry.rating
    delta = 1
    assert_in_delta 2, log_entry.rating, delta
    log_entry.rating = 3
    log_entry.save
    updated = LogEntry.find(log_entry.id)
    assert_in_delta 3, updated.rating, delta
  end
  # test "the truth" do
  #   assert true
  # end
end

require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Ryan", "Can't Stop")
  end

  def test_get_guest_name
    assert_equal("Ryan", @guest1.name)
  end

  def test_get_guest_wallet
    assert_equal(20, @guest1.wallet)
  end

  def test_remove_money_from_wallet
    @guest1.remove_money(5)
    assert_equal(15, @guest1.wallet)
  end

  def test_get_guest_fav_song
    assert_equal("Can't Stop", @guest1.fav_song)
  end

  def test_whoop
    assert_equal("Ryan is whooping", @guest1.whoop)
  end

end









# QUESTIONS
# Does a class/instance of a class need an attribute at all?

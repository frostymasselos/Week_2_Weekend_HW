require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')

require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new("Ryan", "Tailwhip")
    @guest2 = Guest.new("Kirsty", "Single Ladies")
    guest3 = Guest.new("Valerie", "Angels")

    @song1 = Song.new("Can't Stop")
    @song2 = Song.new("Tailwhip")
    song3 = Song.new("Soul to Squeeze")

    @room = Room.new("The Orchard")

  end

  def test_get_room_name
    assert_equal("The Orchard", @room.name)
  end

  # def test_guest_name
  #   assert_equal("Ryan", @room.guest.name)
  # end

  def test_add_one_guest_to_room
    @room.add_guest(@guest1)
    assert_equal(@guest1, @room.guest)
  end

  def test_remove_one_guest_from_room
    @room.add_guest(@guest1)
    @room.remove_guest(@guest1)
    assert_nil(@room.guest)
  end

  def test_add_guest_to_a_room
    guests_to_add = [@guest1]
    @room.add_guests(guests_to_add)
    assert_equal([@guest1], @room.guest)
    assert_equal(1, @room.capacity)
    # assert_equal(15, @guest1.wallet)
  end

  def test_add_guest_to_a_room__is_guest_removing_money?
    guests_to_add = [@guest1]
    @room.add_guests(guests_to_add)
    assert_equal([@guest1], @room.guest)
    assert_equal(1, @room.capacity)
    # assert_equal(15, @guest1.wallet)
  end

  def test_is_money_being_added_to_register?
    guests_to_add = [@guest1]
    @room.add_guests(guests_to_add)
    assert_equal(5, @room.register)
  end

  def test_is_capacity_increasing?
    guests_to_add = [@guest1]
    @room.add_guests(guests_to_add)
    assert_equal(1, @room.capacity)
  end

  # def test_check_how_many_guests_in_room
  #   guests_to_add = [@guest1, @guest2]
  #   @room.add_guests(guests_to_add)
  #   assert_equal(2, @room.return_guests_in_room)
  # end

  # HNSH
  # Surely adding an arrays into an array does that exactly,
  # making one element that consists of two seperate values
  # - not two seperate elements?

  def test_check_room_full_capacity
    @room.add_guests([@guest1])
    @room.add_guests([@guest1])
    @room.add_guests([@guest1])
    assert_equal("Room full", @room.add_guests([@guest1]))
    assert_equal(3, @room.capacity)
    assert_equal(15, @room.register)
  end

  # You can add @guest1 multiple times?


  def test_remove_guest_from_a_room
    @room.add_guests([@guest1])
    @room.add_guests([@guest2])
    guests_to_remove = @guest1
    @room.remove_guests(guests_to_remove)
    assert_equal([@guest2], @room.guest)
  end

  def test_add_song_to_room
    songs_to_add = [@song1, @song2]
    @room.add_songs(songs_to_add)
    assert_equal([@song1, @song2], @room.song)
  end

  def test_guest_cheers_for_fav_song
    @room.add_guests([@guest1])
    @room.add_guests([@guest2])
    songs_to_add = [@song2]
    @room.add_songs(songs_to_add)
    assert_equal("Ryan is whooping", @room.guest_cheer(@guest1, @song2))
  end











  # def test_add_song_to_room
  #   @song1 = Song.new("Can't Stop")
  #   assert_equal("Can't Stop", @song1.title)
  # end
  #
  # def test_add_guest_to_room
  #   @guest1 = Guest.new("Ryan")
  #   assert_equal("Ryan", @guest1.name)
  # end
  #
  # def test_remove_guest_from_room
  #   @guest1 = Guest.new("Ryan")
  #   assert_equal("Ryan", @guest1.name)
  # end

end



  # - Check in guests to rooms/Check out guests from rooms
  # - Add songs to rooms

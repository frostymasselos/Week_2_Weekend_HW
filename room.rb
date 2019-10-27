class Room

  attr_reader :name, :guest, :song, :max_size, :capacity, :register, :entry_fee

  def initialize(name)
    @name = name
    @guest = []
    @song = song
    @max_size = 3
    @capacity = 0
    @register = 0
    @entry_fee = 5
  end

  def add_guest(guest)
    @guest = guest
  end

  def remove_guest(guest)
    if @guest = guest
      @guest = nil
    end
  end

  def add_guests(guest)
    if @capacity < @max_size
      @guest += guest
      @register += @entry_fee
      @capacity += 1
      # guest.wallet -= 5
    end
    return "Room full"
  end

  def return_guests_in_room
    @guest.length
  end

  def remove_guests(guest)
    for person in @guest
      if person == guest
        @guest.delete(person)
      end
    end
  end

  def add_songs(songs)
    @song = songs
  end

  def guest_cheer(guest, song)
    if @song.title == song.title
      if song.title == guest.fav_song
        return guest.whoop
      end
      return "No favourite songs present"
    end
    return "The selected song is not in the playlist"
  end

end

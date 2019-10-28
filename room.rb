class Room

  attr_reader :name, :guest, :song, :max_size, :capacity, :register, :entry_fee

  def initialize(name)
    @name = name
    @guest = []
    @song = []
    @max_size = 3
    @capacity = 0
    @register = 0
    @entry_fee = 5
  end

  # def add_guest(guest)
  #   @guest = guest
  # end
  #
  # def remove_guest(guest)
  #   if @guest = guest
  #     @guest = nil
  #   end
  # end

  def add_guests(guest)
    if @capacity < @max_size
      guest.remove_money(@entry_fee)
      @guest.push(guest)
      @register += @entry_fee
      @capacity += 1
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
    @song.push(songs)
  end

  def guest_cheer(guest)
    for sng in @song
      # for gues in @guest
        if sng.title == guest.fav_song
          return guest.whoop
        end
        return "No favourite songs present for #{guest}"
      # end
    end
  end

  # Is it limited because as it iterates through each song
  # and guest, the first one it finds it's going to return
  # that one and stop? Need an .each method.

end

class Guest

  attr_reader :name, :fav_song, :wallet

  def initialize(name, fav_song)
    @name = name
    @fav_song = fav_song
    @wallet = 20
  end

  def remove_money(amount)
    @wallet -= amount
  end

  def whoop
    "#{@name} is whooping"
  end

end

class Guest

  attr_reader :name, :wallet, :fav_song

  def initialize(name, fav_song)
    @name = name
    @wallet = 20
    @fav_song = fav_song
  end

  def remove_money(amount)
    @wallet -= amount
  end

  def whoop
    "#{@name} is whooping"
  end

end

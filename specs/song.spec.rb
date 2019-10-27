require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Can't Stop")
  end

  def test_get_song_name
    assert_equal("Can't Stop", @song1.title)
  end
end

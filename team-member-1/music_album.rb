class MusicAlbum < Item
  def initialize(on_spotify)
    @on_spotify = on_spotify
  end

  def can_be_archived?()
    @on_spotify ? true : false
  end
end
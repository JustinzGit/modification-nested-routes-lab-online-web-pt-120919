module SongsHelper
  def artist_select(artist, song)

    if artist.nil? && !song.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)

    elsif !artist.nil? && !song.nil?
       artist.name
    end
  end
end

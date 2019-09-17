class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      id == artist.id
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photo|
      id == photo.id
    end
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all do |photo|
      artist.id == photo.artist_id
    end
  end

  def artists_with_multiple_photographs
    @artists.find_all do |artist|
      find_photographs_by_artist(artist).count > 1
    end
  end

  def photographs_taken_by_artist_from(country)
    artists_from = @artists.find_all do |artist|
      country == artist.country
    end
      photos_from = []
      artists_from.each do |artist|
      photos_from << find_photographs_by_artist(artist)
    end
    photos_from.flatten
  end




end

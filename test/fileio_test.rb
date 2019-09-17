require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'
require_relative '../lib/fileio'

class FileIOTest < Minitest::Test
  def setup

    @artist_csv = FileIO.load_artists('./data/artists.csv')
  end

  def test_load_artist_csv
    expected = [{:id=>"1", :name=>"Henri Cartier-Bresson", :born=>"1908", :died=>"2004", :country=>"France"},
 {:id=>"2", :name=>"Ansel Adams", :born=>"1902", :died=>"1984", :country=>"United States"},
 {:id=>"3", :name=>"Diane Arbus", :born=>"1923", :died=>"1971", :country=>"United States"},
 {:id=>"4", :name=>"Walker Evans", :born=>"1903", :died=>"1975", :country=>"United States"},
 {:id=>"5", :name=>"Manuel Alvarez Bravo", :born=>"1902", :died=>"2002", :country=>"Mexico"},
 {:id=>"6", :name=>"Bill Cunningham", :born=>"1929", :died=>"2016", :country=>"United States"}]

    assert_equal expected, @artist_csv
  end


end

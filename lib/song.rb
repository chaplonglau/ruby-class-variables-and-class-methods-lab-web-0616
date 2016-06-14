require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count=0
  @@genres=[]
  @@artists=[]
  @@names=[]

  @@histogram={}

  def initialize(name,artist,genre)
    
    @@count+=1
    @name=name
    @artist=artist
    @genre=genre
    @@genres << genre
    @@artists << artist
  end

  def count
    @@count
  end

  def genres 
    @@genres.uniq
  end

  def artists
    @@artists.uniq
  end

  def genre_count
    @@genres.each_with_object do |x,histogram| 
      if histogram.has_key?(x)==false
          histogram[x]=1
      else
        histogram[x]+=1
      end
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |x,histogram| 
      if histogram.has_key?(x)==false
          histogram[x]=1
      else
        histogram[x]+=1
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |x,histogram| 
      if histogram.has_key?(x)==false
          histogram[x]=1
      else
        histogram[x]+=1
      end
    end


  end

end
class Curator
        attr_reader :photographs,
                    :artists

    def initialize
       @photographs = []
       @artists = []
    end

    def add_photograph(photo)
        photographs.push(photo)
    end

    def add_artist(artist)
        artists.push(artist)
    end

    def photographs_by_artist
        hash = Hash.new {|h,k| h[k] = [] }
        artists.each do |artist|
            photographs.each do |photo|
                if photo.artist_id == artist.id
                    hash[artist] << photo
                end
            end
        end
        hash
    
    end

    def artists_with_multiple_photographs
       [] << photographs_by_artist.max_by { |k, v| v.length }.first.name
    end

    def photographs_taken_by_artist_from(location)
        artists_from(location).map { |artist| artist.drop(1) }.flatten

    end

    def artists_from(location)
        photographs_by_artist.select do |artist|
            artist.country == location
        end
    end
   
    
    
end
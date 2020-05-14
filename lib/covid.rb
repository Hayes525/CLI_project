

class CovidTrack::Covid

    @@all = []



    def self.all
        @@all
    end

    def self.from_api(covidarr)
        covidarr.each do |variable|
            self.new(statistics["positive"]), statistics["recovered"]

        end

    end
    attr_accessor :country, :deaths

    def initialize(positive, recovered)
        @positive, @recovered = country, deaths
        save
    end
    def save
        @@all << self
    end





end

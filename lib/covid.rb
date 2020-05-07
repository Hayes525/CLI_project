

class CovidTrack::Covid

    @@all = []

     

    def self.all
        @@all
    end

    def self.from_api(covidarr)
        covidarr.each do |variable|
            self.new(statistics["deathstats"]), statistics["recoveredstats"]
            
        end

    end
    attr_accessor :country, :deaths

    def initialize(country, deaths)
        @country, @deaths = country, deaths
        save
    end
    def save 
        @@all << self 
    end





end
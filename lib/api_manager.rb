class CovidTrack::APIManager
    BASE_URL = "http://covidtracking.com/api"

    def self.get_covid
        url = BASE_URL + "/us"
        res = HTTParty.get(url)
        CovidTrack::Covid.from_api(res["results"])
    end


end

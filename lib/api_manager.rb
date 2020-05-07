class CovidTrack::APIManager
    BASE_URL = "https://api.covid19api.com/"

    def self.get_covid
        url = BASE_URL + "summary"
        res = HTTParty.get(url)
        CovidTrack::Covid.from_api(res["results"])
    end


end
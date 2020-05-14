class CovidTrack::APIManager
    BASE_URL = "http://covidtracking.com/api"

    def self.get_covid
        url = BASE_URL + "/us"
        res = HTTParty.get(url)
        CovidTrack::Covid.from_api(res["results"])
    end
    def self.get_covid_current_recovered
        url = BASE_URL  + "/us/recovered"
        res = HTTParty.get(url)
        CovidTrack::Covid.from_api(res["recovered"])

    end
    def self.get_covid_current_positive
      url = BASE_URL  + "/us/positive"
      res = HTTParty.get(url)
      CovidTrack::Covid.from_api(res["positive"])
    end


end

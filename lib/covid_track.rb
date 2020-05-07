require_relative "./covid_track/version"
require_relative "./api_manager"
require 'HTTParty'
require_relative "./covid"
require_relative "./cli"

module CovidTrack
  class Error < StandardError; end
  # Your code goes here...
end

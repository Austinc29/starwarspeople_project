require "starwarspeople_project/version"
require_relative"./starwarspeople_project/cli"
require_relative"./starwarspeople_project/people"
require_relative"./starwarspeople_project/api"
require 'open-uri'
require 'nokogiri'
require 'pry'
require 'rest-client'
require 'json'

module StarwarspeopleProject
  class Error < StandardError; end
  # Your code goes here...
end

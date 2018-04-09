require 'sinatra'
require 'httparty'
require 'nokogiri'


url = "https://miami.craigslist.org/search/sof"

dom = Nokogiri::HTML(response.body)

job_titles = dom.css('a.result-title.hdrlnk').map(&:content)

p job_titles

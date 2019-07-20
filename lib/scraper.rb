require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)

    student_names = doc.css(".student-name")
    student_names_array = []
    student_names.each do |name|
      student_names_array << name.text
    end

    student_locations = doc.css(".student-location")
    student_locations_array = []
    student_locations.each do |location|
      student_locations_array << location.text
    end

    student_urls = doc.css(".student-card a[href]")
    student_urls_array = []
    student_urls.each do |profile_url|
      student_urls_array << profile_url["href"]
    end

    combined_array = []
    x = 0
    student_names_array.each do |name|
      combined_array << {:name => name, :location => student_locations_array[x], :profile_url => student_urls_array[x]}
      x += 1
    end
    combined_array
  end

  def self.scrape_profile_page(profile_url)

  end

end

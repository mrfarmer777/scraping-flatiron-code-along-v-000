require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

    def get_page
      html=open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
      doc=Nokogiri::HTML.parse(html)
      binding.pry
    end

    def get_courses
      doc=self.get_page.css(".post")   
    end


    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end

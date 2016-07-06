# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks


namespace :echo do
    task :request_data => :environment do
        require 'open-uri'
        require 'nokogiri'
         655563.downto(655562) do |c|
          doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free&page=#{c}"))
          doc.css(".sbj//a").each do |x|
   
            @t =Post.new   
            @t.title = x.inner_text
            @t.href =  x.attr('href')
            @t.save
      end
    
  end
    end
end

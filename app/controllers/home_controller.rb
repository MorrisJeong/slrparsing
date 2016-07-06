require 'open-uri'

class HomeController < ApplicationController
  def index
    @everypost = Post.all.reverse
    
  end
  
  def list
   
      655563.downto(655561) do |c|
        doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free&page=#{c}"))
        doc.css(".sbj//a").each do |x|
     
              t =Post.new   
              t.title = x.inner_text
              t.href =  x.attr('href')
              t.save
           
        end
      
    end
    redirect_to "/home/index"
  end
end

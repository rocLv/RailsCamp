require 'nokogiri'
require 'open-uri'

URL = "http://123.china.com/".freeze

doc = Nokogiri::HTML(open(URL))

c = doc.css ".cat a"
net_cat = {}

c.each do |cc|
  net_cat[cc.text.gsub(/[\[\]]/, '')] = cc.attributes["href"].value
end

net_cat.each do |key, value|
  puts value
  begin
    elements = Nokogiri::HTML(open(value)).css ".m_1 a"

    elements.each do |ele|
      p ele.text
      p ele.attributes["href"].value
    end
  rescue
    next
  end
end

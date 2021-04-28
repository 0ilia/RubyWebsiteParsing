require 'open-uri'
require 'nokogiri'
=begin

require 'json'
require "net/http"
require "rest-client"
=end

j = 1
i =1

while (true)
  url = 'https://www.dns-shop.ru/catalog/17a8cfaf16404e77/feny/?p=' + j.to_s + '&order=1&groupBy=none&stock=2'
  html = open(url)
  doc = Nokogiri::HTML(html)
  puts url

  flag = false
  doc.xpath("/html/body/div[1]/div/div[4]/div[2]/div[1]/div[1]/div[2]/div/div/div/div/div/div/div[2]/div/a").each() do |showing|
    puts i.to_s + "-" + showing.content + "-" + j.to_s
    i += 1
    flag = true
    ###
  end
  j += 1
  if (!flag)
    break
  end
end

=begin
body = RestClient.get("https://developerhub.alfabank.by:8273/partner/1.0.1/public/nationalRates?currencyCode",{s:"w"})

a = JSON.parse(body)


puts a["rates"][0]["rate"]=end
=end

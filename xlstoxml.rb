require 'spreadsheet'
require 'active_support/core_ext'

Spreadsheet.client_encoding = 'UTF-8'
xls_path = ARGV.first
export_path = ARGV.second
book = Spreadsheet.open xls_path
sheet1 = book.worksheet 0
#from the secode line to handle
#xls line order is school_name question key item1 item2 item3 item4
timus={}
count=0
sheet1.each 1 do |row|
  count+=1
  prefix="timu"
  timu=prefix+count.to_s
  timus[timu]={}
  timus[timu]['school_name']=row[0].strip
  timus[timu]['question']=row[1].strip
  timus[timu]['key']=row[2].strip
  timus[timu]['item1']=row[3].strip
  timus[timu]['item2']=row[4].strip
  timus[timu]['item3']=row[5].strip
  unless row[6].empty?
    timus[timu]['item4']=row[6].strip
  end
end

xml_string = timus.to_xml(:root=>"timus")
File.open export_path,"w+" do |f|
  f.write xml_string
end

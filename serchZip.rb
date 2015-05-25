KEN_DATA = File.open("KEN_UTF8.csv")
zipcode = ARGV[0]
mach = false
# unless zipcode =~ /[0-9]{7}/
#   puts "これは郵便番号じゃないな！"
# end
#郵便番号じゃないデータが入ってきたときのことは後で考える。
startTime = Time.now
puts "検索中です…"
puts ""
KEN_DATA.each_line do |line|
  info = line.split(",")
  if info[0] == zipcode
    puts info[1]+" "+info[2]+" "+info[3]
    puts info[4]+" "+info[5]+" "+info[6]
    much = true
  end
  #end
end

unless much
JIGYOSYO_DATA = File.open("JIGYOSYO_UTF8.csv")
JIGYOSYO_DATA.each_line do |line|
  info = line.split(",")
  if info[0] == zipcode
    puts info[1]
    puts info[2]+" "+info[3]+" "+info[4]+" "+info[5]
    much == true
  end
end

case much
when true
  puts "完了までの時間は#{Time.now - startTime}秒です。"
when false
  puts "該当する住所はありませんでした。"
end

data = File.open("KEN_UTF8.csv")
zipcode = ARGV[0]
unless zipcode =~ /[0-9]{7}/
  puts "これは郵便番号じゃないな！"
end
startTime = Time.now
puts "検索中です…"
puts ""
data.each_line do |line|
  info = line.split(",")
  if info[0] == zipcode
    puts info[1]+" "+info[2]+" "+info[3]
    puts info[4]+" "+info[5]+" "+info[6]
  end
end
puts ""
puts "終了までにかかった時間は#{Time.now - startTime}秒です。"

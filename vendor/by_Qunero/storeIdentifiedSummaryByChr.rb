#!/usr/bin/env ruby

require 'sqlite3'

puts "handle database #{ARGV[0]}"
db = SQLite3::Database.new( "#{ARGV[0]}" )

#protein_ids = db.query "select pro_id from proteins"

#pros = db.execute( "select pro_id from proteins limit 50" ) 
%w[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y].each do |chr|
  total = db.execute("select count(*) from proteins where chr='#{chr}'")
  identified = db.execute("select count(*) from proteins where chr='#{chr}' and identified_time>0")
  p total,identified
  ratio = sprintf("%4.2f%%",identified[0][0] * 100.0 / total[0][0])
  puts ratio
  result = db.execute("insert into identified_summary_by_chrs values (?,?,?,? )",chr,total[0][0],identified[0][0],ratio)
end

=begin
db.transaction do |d|
  d.execute( "select pro_id from proteins" ) do |id|
    #puts "pro_id='#{id[0]}'"
    d.execute("update proteins set identified_time=(select count() from identified_proteins where pro_id='#{id[0]}') where  pro_id='#{id[0]}';")
  end
end
=end

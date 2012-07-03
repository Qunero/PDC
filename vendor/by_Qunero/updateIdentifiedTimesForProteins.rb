#!/usr/bin/env ruby

require 'sqlite3'

puts "handle database #{ARGV[0]}"
db = SQLite3::Database.new( "#{ARGV[0]}" )

#protein_ids = db.query "select pro_id from proteins"

db.execute( "select pro_id from proteins" ) do |id|
  #puts "pro_id='#{id[0]}'"
  db.execute("update proteins set identified_time=(select count() from identified_proteins where pro_id='#{id[0]}') where  pro_id='#{id[0]}'")
end


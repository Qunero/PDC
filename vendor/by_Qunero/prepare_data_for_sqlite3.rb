#!/usr/bin/ruby 
out = File.open(ARGV[1],'w');
id = 1;
File.open(ARGV[0]){ |f|
	f.each_line do |l|
		arr = l.chomp.split("\t")
		arr[0,0] = id
		arr[6,0] = [Time.now, Time.now]
		out.puts arr.join(',')
		id = id + 1
	end
}


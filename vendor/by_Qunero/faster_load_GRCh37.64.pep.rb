require 'active_record'
require 'activerecord-import'

proteins = []
File.open("/home/qunengrong/Downloads/Homo_sapiens.GRCh37.64.pep.ref_table.tsv"){ |f|
	f.each_line do |l|
		arr = l.chomp.split("\t")
		proteins<< Protein.new(:pro_id => arr[0], :version => arr[1], :chr => arr[2], :gene => arr[3], :transcription => arr[4])
	end
}

Protein.import proteins 


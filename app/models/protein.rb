class Protein < ActiveRecord::Base
  attr_accessible :chr, :gene, :pro_id, :transcription, :version
end

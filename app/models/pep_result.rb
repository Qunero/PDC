class PepResult < ActiveRecord::Base
  attr_accessible :calc_mr, :charge, :evalue, :exp_id, :homology_score, :identity_score, :ions_score, :modification, :peptide_ms_delta, :peptide_seq, :protein_id, :query_number, :retention_time
end

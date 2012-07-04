class ExpDataSummary < ActiveRecord::Base
  attr_accessible :fdr, :identified_pep_num, :identified_pro_num, :identified_spectra_num, :project_id, :spectra_num
end

class ProResult < ActiveRecord::Base
  attr_accessible :coverage, :description, :exp_id, :group_id, :pep_query_num, :pro_id, :pro_mass, :same_set, :uniq_pep_num, :uniq_spec_num
end

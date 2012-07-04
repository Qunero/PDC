class Project < ActiveRecord::Base
  has_one :exp_data_summary
  has_one :exp_paramater
  attr_accessible :date, :detail, :id, :title
end

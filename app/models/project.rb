class Project < ActiveRecord::Base
  has_one :exp_data_summary
  has_one :exp_paramater
  attr_accessible :date, :detail, :id, :title

  validates :title, :presence => true,
                    :length => { :in=> 5..35 }
  validates :id, :uniqueness => true
end

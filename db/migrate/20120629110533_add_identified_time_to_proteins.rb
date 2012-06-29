class AddIdentifiedTimeToProteins < ActiveRecord::Migration
  def change
    add_column :proteins, :identified_time, :integer, :default=>0
  end
end

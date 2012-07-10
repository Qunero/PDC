class CreateIdentifiedSummaryByChrs < ActiveRecord::Migration
  def change
    create_table :identified_summary_by_chrs, :id=>false do |t|
      t.string :chr
      t.integer :pro_num
      t.integer :identified_pro_num
      t.float :identified_ratio
    end
  end
end

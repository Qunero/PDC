class CreateExpDataSummaries < ActiveRecord::Migration
  def change
    create_table :exp_data_summaries do |t|
      t.integer :spectra_num
      t.integer :identified_spectra_num
      t.integer :identified_pep_num
      t.integer :identified_pro_num
      t.float :fdr
      t.integer :project_id

      t.timestamps
    end
  end
end

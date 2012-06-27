class CreatePepResults < ActiveRecord::Migration
  def change
    create_table :pep_results, :id=>false do |t|
      t.integer :exp_id
      t.integer :query_number
      t.float :calc_mr
      t.integer :charge
      t.float :peptide_ms_delta
      t.float :ions_score
      t.float :homology_score
      t.float :identity_score
      t.float :evalue
      t.string :peptide_seq
      t.string :protein_id
      t.string :modification
      t.float :retention_time
    end
  end
end

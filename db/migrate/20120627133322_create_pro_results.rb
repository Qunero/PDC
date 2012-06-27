class CreateProResults < ActiveRecord::Migration
  def change
    create_table :pro_results do |t|
      t.integer :exp_id
      t.integer :group_id
      t.string :pro_id
      t.float :pro_mass
      t.float :coverage
      t.integer :uniq_pep_num
      t.integer :uniq_spec_num
      t.integer :pep_query_num
      t.text :same_set
      t.string :description
    end
  end
end

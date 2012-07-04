class CreateExpParamaters < ActiveRecord::Migration
  def change
    create_table :exp_paramaters do |t|
      t.string :enzyme
      t.string :db
      t.string :pep_tol
      t.string :ion_tol
      t.string :var_mod
      t.string :fixed_mod
      t.string :mass_type
      t.string :instrument
      t.integer :miss_clv
      t.string :pro_mass
      t.integer :project_id

      t.timestamps
    end
  end
end

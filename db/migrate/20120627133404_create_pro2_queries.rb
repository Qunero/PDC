class CreatePro2Queries < ActiveRecord::Migration
  def change
    create_table :pro2_queries, :id=>false do |t|
      t.integer :exp_id
      t.integer :group_id
      t.text :pep_querys
    end
  end
end

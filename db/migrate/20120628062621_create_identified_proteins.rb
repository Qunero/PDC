class CreateIdentifiedProteins < ActiveRecord::Migration
  def change
    create_table :identified_proteins, :id=>false do |t|
      t.string :pro_id
      t.integer :exp_id
      t.integer :group_id
    end
  end
end

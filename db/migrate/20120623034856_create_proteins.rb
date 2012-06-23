class CreateProteins < ActiveRecord::Migration
  def change
    create_table :proteins do |t|
      t.string :pro_id
      t.string :version
      t.string :chr
      t.string :gene
      t.string :transcription

      t.timestamps
    end
  end
end

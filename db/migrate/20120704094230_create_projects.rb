class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :id
      t.string :title
      t.text :detail
      t.date :date

      t.timestamps
    end
  end
end

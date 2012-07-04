# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120704094248) do

  create_table "exp_data_summaries", :force => true do |t|
    t.integer  "spectra_num"
    t.integer  "identified_spectra_num"
    t.integer  "identified_pep_num"
    t.integer  "identified_pro_num"
    t.float    "fdr"
    t.integer  "project_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "exp_paramaters", :force => true do |t|
    t.string   "enzyme"
    t.string   "db"
    t.string   "pep_tol"
    t.string   "ion_tol"
    t.string   "var_mod"
    t.string   "fixed_mod"
    t.string   "mass_type"
    t.string   "instrument"
    t.integer  "miss_clv"
    t.string   "pro_mass"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "identified_proteins", :id => false, :force => true do |t|
    t.string  "pro_id"
    t.integer "exp_id"
    t.integer "group_id"
  end

  create_table "pep_results", :id => false, :force => true do |t|
    t.integer "exp_id"
    t.integer "query_number"
    t.float   "calc_mr"
    t.integer "charge"
    t.float   "peptide_ms_delta"
    t.float   "ions_score"
    t.float   "homology_score"
    t.float   "identity_score"
    t.float   "evalue"
    t.string  "peptide_seq"
    t.string  "protein_id"
    t.string  "modification"
    t.float   "retention_time"
  end

  create_table "pro2_queries", :id => false, :force => true do |t|
    t.integer "exp_id"
    t.integer "group_id"
    t.text    "pep_querys"
  end

  create_table "pro_results", :force => true do |t|
    t.integer "exp_id"
    t.integer "group_id"
    t.string  "pro_id"
    t.float   "pro_mass"
    t.float   "coverage"
    t.integer "uniq_pep_num"
    t.integer "uniq_spec_num"
    t.integer "pep_query_num"
    t.text    "same_set"
    t.string  "description"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "detail"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proteins", :force => true do |t|
    t.string   "pro_id"
    t.string   "version"
    t.string   "chr"
    t.string   "gene"
    t.string   "transcription"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "identified_time", :default => 0
  end

end

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

ActiveRecord::Schema.define(:version => 20120627133532) do

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

  create_table "proteins", :force => true do |t|
    t.string   "pro_id"
    t.string   "version"
    t.string   "chr"
    t.string   "gene"
    t.string   "transcription"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end

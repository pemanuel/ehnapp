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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150419235521) do

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id"
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type"

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id"
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type"
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type"
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type"

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id"
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type"

  create_table "patients", force: :cascade do |t|
    t.string   "lastname"
    t.string   "middlename"
    t.string   "firstname"
    t.date     "birthdate"
    t.string   "sex"
    t.string   "ethnicity"
    t.string   "uniqueid"
    t.string   "accountnumber"
    t.string   "medicaidid"
    t.string   "medicareid"
    t.string   "ssn"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "worklist_id"
  end

  create_table "referrals", force: :cascade do |t|
    t.date     "vistDate"
    t.time     "startTime"
    t.time     "endTime"
    t.string   "visitType"
    t.string   "patientLastName"
    t.string   "patientFirstName"
    t.string   "patientMiddleName"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "homePhone"
    t.integer  "mobilePhone"
    t.integer  "workPhone"
    t.integer  "patientSSN"
    t.date     "patientDOB"
    t.integer  "patientAge"
    t.string   "patientRace"
    t.string   "patientEthnicity"
    t.boolean  "sexMale"
    t.boolean  "sexFemale"
    t.date     "referralDate"
    t.string   "emergencyContactName"
    t.string   "emergencyContactRelationship"
    t.integer  "emergencyContactPhone"
    t.string   "referringProvider"
    t.string   "referringOrgAgency"
    t.integer  "referringCHW"
    t.text     "primaryDiag"
    t.text     "notes"
    t.text     "goals"
    t.text     "reasonForCHWReferral"
    t.boolean  "takingMeds"
    t.string   "takingMedsValue"
    t.boolean  "otherMedicalConcerns"
    t.text     "ifYes"
    t.integer  "chwAssigned"
    t.date     "nextVistDate"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "formtype"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.boolean  "manager"
    t.boolean  "chw"
    t.string   "name"
    t.string   "surname"
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "worklists", force: :cascade do |t|
    t.string   "name"
    t.string   "nextworklist"
    t.boolean  "status",       default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end

ActiveRecord::Schema.define(version: 20170730224621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "emotion_id"
  end

  create_table "emotes", force: :cascade do |t|
    t.string "input", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "emotion_id"
  end

  create_table "emotions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer "action_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "emote_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "identifier"
    t.string "identifier_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

# encoding: UTF-8

ActiveRecord::Schema.define(version: 20160212160805) do

  create_table "games", force: :cascade do |t|
    t.text     "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

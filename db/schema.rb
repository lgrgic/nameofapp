ActiveRecord::Schema.define(version: 20180531103809) do

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.float   "total"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "colour"
    t.string   "color"
    t.decimal  "price"
  end

end

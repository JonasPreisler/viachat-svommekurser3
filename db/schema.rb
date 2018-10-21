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

ActiveRecord::Schema.define(version: 0) do

  create_table "wp_commentmeta", primary_key: "meta_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "comment_id", default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text "meta_value", limit: 4294967295
    t.index ["comment_id"], name: "comment_id"
    t.index ["meta_key"], name: "meta_key", length: 191
  end

  create_table "wp_comments", primary_key: "comment_ID", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "comment_post_ID", default: 0, null: false, unsigned: true
    t.text "comment_author", limit: 255, null: false
    t.string "comment_author_email", limit: 100, default: "", null: false
    t.string "comment_author_url", limit: 200, default: "", null: false
    t.string "comment_author_IP", limit: 100, default: "", null: false
    t.datetime "comment_date", null: false
    t.datetime "comment_date_gmt", null: false
    t.text "comment_content", null: false
    t.integer "comment_karma", default: 0, null: false
    t.string "comment_approved", limit: 20, default: "1", null: false
    t.string "comment_agent", default: "", null: false
    t.string "comment_type", limit: 20, default: "", null: false
    t.bigint "comment_parent", default: 0, null: false, unsigned: true
    t.bigint "user_id", default: 0, null: false, unsigned: true
    t.index ["comment_approved", "comment_date_gmt"], name: "comment_approved_date_gmt"
    t.index ["comment_author_email"], name: "comment_author_email", length: 10
    t.index ["comment_date_gmt"], name: "comment_date_gmt"
    t.index ["comment_parent"], name: "comment_parent"
    t.index ["comment_post_ID"], name: "comment_post_ID"
    t.index ["comment_type"], name: "woo_idx_comment_type"
  end

  create_table "wp_links", primary_key: "link_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "link_url", default: "", null: false
    t.string "link_name", default: "", null: false
    t.string "link_image", default: "", null: false
    t.string "link_target", limit: 25, default: "", null: false
    t.string "link_description", default: "", null: false
    t.string "link_visible", limit: 20, default: "Y", null: false
    t.bigint "link_owner", default: 1, null: false, unsigned: true
    t.integer "link_rating", default: 0, null: false
    t.datetime "link_updated", null: false
    t.string "link_rel", default: "", null: false
    t.text "link_notes", limit: 16777215, null: false
    t.string "link_rss", default: "", null: false
    t.index ["link_visible"], name: "link_visible"
  end

  create_table "wp_options", primary_key: "option_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "option_name", limit: 191, default: "", null: false
    t.text "option_value", limit: 4294967295, null: false
    t.string "autoload", limit: 20, default: "yes", null: false
    t.index ["option_name"], name: "option_name", unique: true
  end

  create_table "wp_postmeta", primary_key: "meta_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "post_id", default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: 191
    t.index ["post_id"], name: "post_id"
  end

  create_table "wp_posts", primary_key: "ID", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "post_author", default: 0, null: false, unsigned: true
    t.datetime "post_date", null: false
    t.datetime "post_date_gmt", null: false
    t.text "post_content", limit: 4294967295, null: false
    t.text "post_title", null: false
    t.text "post_excerpt", null: false
    t.string "post_status", limit: 20, default: "publish", null: false
    t.string "comment_status", limit: 20, default: "open", null: false
    t.string "ping_status", limit: 20, default: "open", null: false
    t.string "post_password", default: "", null: false
    t.string "post_name", limit: 200, default: "", null: false
    t.text "to_ping", null: false
    t.text "pinged", null: false
    t.datetime "post_modified", null: false
    t.datetime "post_modified_gmt", null: false
    t.text "post_content_filtered", limit: 4294967295, null: false
    t.bigint "post_parent", default: 0, null: false, unsigned: true
    t.string "guid", default: "", null: false
    t.integer "menu_order", default: 0, null: false
    t.string "post_type", limit: 20, default: "post", null: false
    t.string "post_mime_type", limit: 100, default: "", null: false
    t.bigint "comment_count", default: 0, null: false
    t.index ["post_author"], name: "post_author"
    t.index ["post_name"], name: "post_name", length: 191
    t.index ["post_parent"], name: "post_parent"
    t.index ["post_type", "post_status", "post_date", "ID"], name: "type_status_date"
  end

  create_table "wp_term_relationships", primary_key: ["object_id", "term_taxonomy_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "object_id", default: 0, null: false, unsigned: true
    t.bigint "term_taxonomy_id", default: 0, null: false, unsigned: true
    t.integer "term_order", default: 0, null: false
    t.index ["term_taxonomy_id"], name: "term_taxonomy_id"
  end

  create_table "wp_term_taxonomy", primary_key: "term_taxonomy_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "term_id", default: 0, null: false, unsigned: true
    t.string "taxonomy", limit: 32, default: "", null: false
    t.text "description", limit: 4294967295, null: false
    t.bigint "parent", default: 0, null: false, unsigned: true
    t.bigint "count", default: 0, null: false
    t.index ["taxonomy"], name: "taxonomy"
    t.index ["term_id", "taxonomy"], name: "term_id_taxonomy", unique: true
  end

  create_table "wp_termmeta", primary_key: "meta_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "term_id", default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: 191
    t.index ["term_id"], name: "term_id"
  end

  create_table "wp_terms", primary_key: "term_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "name", limit: 200, default: "", null: false
    t.string "slug", limit: 200, default: "", null: false
    t.bigint "term_group", default: 0, null: false
    t.index ["name"], name: "name", length: 191
    t.index ["slug"], name: "slug", length: 191
  end

  create_table "wp_usermeta", primary_key: "umeta_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "user_id", default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: 191
    t.index ["user_id"], name: "user_id"
  end

  create_table "wp_users", primary_key: "ID", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "user_login", limit: 60, default: "", null: false
    t.string "user_pass", default: "", null: false
    t.string "user_nicename", limit: 50, default: "", null: false
    t.string "user_email", limit: 100, default: "", null: false
    t.string "user_url", limit: 100, default: "", null: false
    t.datetime "user_registered", null: false
    t.string "user_activation_key", default: "", null: false
    t.integer "user_status", default: 0, null: false
    t.string "display_name", limit: 250, default: "", null: false
    t.index ["user_email"], name: "user_email"
    t.index ["user_login"], name: "user_login_key"
    t.index ["user_nicename"], name: "user_nicename"
  end

  create_table "wp_wc_download_log", primary_key: "download_log_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.datetime "timestamp", null: false
    t.bigint "permission_id", null: false, unsigned: true
    t.bigint "user_id", unsigned: true
    t.string "user_ip_address", limit: 100, default: ""
    t.index ["permission_id"], name: "permission_id"
    t.index ["timestamp"], name: "timestamp"
  end

  create_table "wp_wc_webhooks", primary_key: "webhook_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "status", limit: 200, null: false
    t.text "name", null: false
    t.bigint "user_id", null: false, unsigned: true
    t.text "delivery_url", null: false
    t.text "secret", null: false
    t.string "topic", limit: 200, null: false
    t.datetime "date_created", null: false
    t.datetime "date_created_gmt", null: false
    t.datetime "date_modified", null: false
    t.datetime "date_modified_gmt", null: false
    t.integer "api_version", limit: 2, null: false
    t.integer "failure_count", limit: 2, default: 0, null: false
    t.boolean "pending_delivery", default: false, null: false
    t.index ["user_id"], name: "user_id"
  end

  create_table "wp_woocommerce_api_keys", primary_key: "key_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "description", limit: 200
    t.string "permissions", limit: 10, null: false
    t.string "consumer_key", limit: 64, null: false
    t.string "consumer_secret", limit: 43, null: false
    t.text "nonces", limit: 4294967295
    t.string "truncated_key", limit: 7, null: false
    t.datetime "last_access"
    t.index ["consumer_key"], name: "consumer_key"
    t.index ["consumer_secret"], name: "consumer_secret"
  end

  create_table "wp_woocommerce_attribute_taxonomies", primary_key: "attribute_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "attribute_name", limit: 200, null: false
    t.string "attribute_label", limit: 200
    t.string "attribute_type", limit: 20, null: false
    t.string "attribute_orderby", limit: 20, null: false
    t.integer "attribute_public", default: 1, null: false
    t.index ["attribute_name"], name: "attribute_name", length: 20
  end

  create_table "wp_woocommerce_downloadable_product_permissions", primary_key: "permission_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "download_id", limit: 36, null: false
    t.bigint "product_id", null: false, unsigned: true
    t.bigint "order_id", default: 0, null: false, unsigned: true
    t.string "order_key", limit: 200, null: false
    t.string "user_email", limit: 200, null: false
    t.bigint "user_id", unsigned: true
    t.string "downloads_remaining", limit: 9
    t.datetime "access_granted", null: false
    t.datetime "access_expires"
    t.bigint "download_count", default: 0, null: false, unsigned: true
    t.index ["download_id", "order_id", "product_id"], name: "download_order_product"
    t.index ["order_id"], name: "order_id"
    t.index ["product_id", "order_id", "order_key", "download_id"], name: "download_order_key_product", length: { order_key: 16 }
  end

  create_table "wp_woocommerce_log", primary_key: "log_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.datetime "timestamp", null: false
    t.integer "level", limit: 2, null: false
    t.string "source", limit: 200, null: false
    t.text "message", limit: 4294967295, null: false
    t.text "context", limit: 4294967295
    t.index ["level"], name: "level"
  end

  create_table "wp_woocommerce_order_itemmeta", primary_key: "meta_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "order_item_id", null: false, unsigned: true
    t.string "meta_key"
    t.text "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: 32
    t.index ["order_item_id"], name: "order_item_id"
  end

  create_table "wp_woocommerce_order_items", primary_key: "order_item_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.text "order_item_name", null: false
    t.string "order_item_type", limit: 200, default: "", null: false
    t.bigint "order_id", null: false, unsigned: true
    t.index ["order_id"], name: "order_id"
  end

  create_table "wp_woocommerce_payment_tokenmeta", primary_key: "meta_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "payment_token_id", null: false, unsigned: true
    t.string "meta_key"
    t.text "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: 32
    t.index ["payment_token_id"], name: "payment_token_id"
  end

  create_table "wp_woocommerce_payment_tokens", primary_key: "token_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "gateway_id", limit: 200, null: false
    t.text "token", null: false
    t.bigint "user_id", default: 0, null: false, unsigned: true
    t.string "type", limit: 200, null: false
    t.boolean "is_default", default: false, null: false
    t.index ["user_id"], name: "user_id"
  end

  create_table "wp_woocommerce_sessions", primary_key: "session_key", id: :string, limit: 32, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "session_id", null: false, unsigned: true, auto_increment: true
    t.text "session_value", limit: 4294967295, null: false
    t.bigint "session_expiry", null: false, unsigned: true
    t.index ["session_id"], name: "session_id", unique: true
  end

  create_table "wp_woocommerce_shipping_zone_locations", primary_key: "location_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "zone_id", null: false, unsigned: true
    t.string "location_code", limit: 200, null: false
    t.string "location_type", limit: 40, null: false
    t.index ["location_id"], name: "location_id"
    t.index ["location_type", "location_code"], name: "location_type_code", length: { location_type: 10, location_code: 20 }
  end

  create_table "wp_woocommerce_shipping_zone_methods", primary_key: "instance_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "zone_id", null: false, unsigned: true
    t.string "method_id", limit: 200, null: false
    t.bigint "method_order", null: false, unsigned: true
    t.boolean "is_enabled", default: true, null: false
  end

  create_table "wp_woocommerce_shipping_zones", primary_key: "zone_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "zone_name", limit: 200, null: false
    t.bigint "zone_order", null: false, unsigned: true
  end

  create_table "wp_woocommerce_tax_rate_locations", primary_key: "location_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "location_code", limit: 200, null: false
    t.bigint "tax_rate_id", null: false, unsigned: true
    t.string "location_type", limit: 40, null: false
    t.index ["location_type", "location_code"], name: "location_type_code", length: { location_type: 10, location_code: 20 }
    t.index ["tax_rate_id"], name: "tax_rate_id"
  end

  create_table "wp_woocommerce_tax_rates", primary_key: "tax_rate_id", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "tax_rate_country", limit: 2, default: "", null: false
    t.string "tax_rate_state", limit: 200, default: "", null: false
    t.string "tax_rate", limit: 8, default: "", null: false
    t.string "tax_rate_name", limit: 200, default: "", null: false
    t.bigint "tax_rate_priority", null: false, unsigned: true
    t.integer "tax_rate_compound", default: 0, null: false
    t.integer "tax_rate_shipping", default: 1, null: false
    t.bigint "tax_rate_order", null: false, unsigned: true
    t.string "tax_rate_class", limit: 200, default: "", null: false
    t.index ["tax_rate_class"], name: "tax_rate_class", length: 10
    t.index ["tax_rate_country"], name: "tax_rate_country"
    t.index ["tax_rate_priority"], name: "tax_rate_priority"
    t.index ["tax_rate_state"], name: "tax_rate_state", length: 2
  end

  create_table "wp_yoast_seo_links", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "url", null: false
    t.bigint "post_id", null: false, unsigned: true
    t.bigint "target_post_id", null: false, unsigned: true
    t.string "type", limit: 8, null: false
    t.index ["post_id", "type"], name: "link_direction"
  end

  create_table "wp_yoast_seo_meta", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "object_id", null: false, unsigned: true
    t.integer "internal_link_count", unsigned: true
    t.integer "incoming_link_count", unsigned: true
    t.index ["object_id"], name: "object_id", unique: true
  end

  add_foreign_key "wp_wc_download_log", "wp_woocommerce_downloadable_product_permissions", column: "permission_id", primary_key: "permission_id", name: "fk_wc_download_log_permission_id", on_delete: :cascade
end

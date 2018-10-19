class WpPost < ActiveRecord::Base
  establish_connection(:db)
  self.table_name = "wp_posts"

  has_one :post_meta
end
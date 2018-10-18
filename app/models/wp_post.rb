class WpPost < ActiveRecord::Base
  establish_connection(:production)
  self.table_name = "wp_posts"

  has_one :post_meta
end
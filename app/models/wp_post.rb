class WpPost < ActiveRecord::Base
  self.table_name = "wp_posts"

  has_one :post_meta
end
class WpPost < ActiveRecord::Base
  establish_connection(:db)
  self.table_name = "wp_posts"
end
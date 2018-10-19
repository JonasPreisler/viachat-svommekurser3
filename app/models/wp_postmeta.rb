class WpPostmeta < ActiveRecord::Base
  establish_connection(:db)
  self.table_name = "wp_postmeta"
end
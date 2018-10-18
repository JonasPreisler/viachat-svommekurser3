class WpPostmeta < ActiveRecord::Base
  establish_connection(:production)
  self.table_name = "wp_postmeta"
end
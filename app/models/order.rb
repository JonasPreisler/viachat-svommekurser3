class Order < ApplicationRecord
	alias_attribute :last_purchased_item, :'last purchased item'
	alias_attribute :first_name, :'first name'
	alias_attribute :last_name, :'last name'
	belongs_to :business, optional: :true

end

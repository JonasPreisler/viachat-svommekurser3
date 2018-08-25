class Lead < ApplicationRecord
	alias_attribute :last_name, :'last name'
	alias_attribute :messenger_user_id, :'messenger user id'
	alias_attribute :chatfuel_user_id, :'chatfuel user id'
	alias_attribute :first_name, :'first name'
	alias_attribute :last_user_freeform_input, :'last user freeform input'
	alias_attribute :pofile_pic_url, :'profile pic url'

	belongs_to :slot, optional: :true
	belongs_to :user

    def properties_objects
      Property.where(id: self.properties.reject(&:empty?)).map(&:address).join(",")
    end

end

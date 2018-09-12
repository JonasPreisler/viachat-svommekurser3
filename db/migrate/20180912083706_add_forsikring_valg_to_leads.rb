class AddForsikringValgToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :forsikring_valg, :string
  end
end

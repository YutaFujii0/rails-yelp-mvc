class RenameColomnPhoneMunberInRestaurantToPhonenumber < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :phone_munber, :phone_number
  end
end

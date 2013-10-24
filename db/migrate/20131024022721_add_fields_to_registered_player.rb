class AddFieldsToRegisteredPlayer < ActiveRecord::Migration
  def change
    add_column :registered_players, :name, :string
    add_column :registered_players, :email, :string
  end
end

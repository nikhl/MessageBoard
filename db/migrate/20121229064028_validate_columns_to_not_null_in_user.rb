class ValidateColumnsToNotNullInUser < ActiveRecord::Migration
  def up
    change_column :users, :provider, :string, :null => false
    change_column :users, :name, :string, :null => false
    change_column :users, :uid, :string, :null => false
  end
end

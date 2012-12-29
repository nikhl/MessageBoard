class ValidateColumnsToNotNullInPost < ActiveRecord::Migration
  def up
    change_column :posts, :message, :string, :null => false
    change_column :posts, :title, :string, :null => false
    change_column :posts, :user_id, :integer, :null => false
  end

end

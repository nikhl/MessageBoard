class AddOauthTokenAndExpiresAt < ActiveRecord::Migration
  def up
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_expires_at, :datetime
  end
end

class RemoveDoorkeeper < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key(:oauth_access_grants, :oauth_applications)

    remove_foreign_key(:oauth_access_tokens,:oauth_applications)

    drop_table :oauth_applications
    drop_table :oauth_access_grants
    drop_table :oauth_access_tokens
  end
end

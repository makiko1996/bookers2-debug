class RenameUsersIdColumnBookComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :book_comments, :users_id, :user_id
  end
end

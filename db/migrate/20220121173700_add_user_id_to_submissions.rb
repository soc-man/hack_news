class AddUserIdToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :user_id, :integer
    add_index :submissions, :user_id
  end
end

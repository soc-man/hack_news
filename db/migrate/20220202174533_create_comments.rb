class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :submission_id
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :comments, :submission_id
  end
end

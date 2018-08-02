class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :user,      foreign_key: true, null: false
      # t.references :following, foreign_key: true, null: false
      t.integer :following_id, null: false

      t.timestamps
    end
  end
end

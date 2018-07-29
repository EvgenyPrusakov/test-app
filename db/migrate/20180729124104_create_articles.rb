class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|

      t.references :user, foreign_key: true

      t.string  :title,   null: true
      t.string  :content, null: true

      t.timestamps
    end
  end
end

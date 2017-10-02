class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :user, foreign_key: true
      t.references :tweet, foreign_key: true
      t.string :body, null: false

      t.timestamps
    end
  end
end

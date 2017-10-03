class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.string :body, null: false

      t.timestamps
    end
  end
end

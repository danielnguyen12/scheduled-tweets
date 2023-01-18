class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :twitter_account, null: false, foreign_key: true
      t.text :body
      t.datetime :publish_at
      t.string :tweet_id

      t.timestamps
    end
  end
end

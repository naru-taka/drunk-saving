class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.text        :text
      t.integer     :record, null:false
      t.references :user, foreign_key: true
      t.timestamps null: true
    end
  end
end

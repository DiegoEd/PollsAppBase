class CreateUserPollOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_poll_options do |t|
      t.references :user, foreign_key: true
      t.references :poll, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end

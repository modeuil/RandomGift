class CreateEventRandoms < ActiveRecord::Migration[7.0]
  def change
    create_table :event_randoms do |t|
      t.string :title
      t.text :emails
      t.float :max_amount
      t.string :user_id

      t.timestamps
    end
  end
end

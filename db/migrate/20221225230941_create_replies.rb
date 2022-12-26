class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.references :ticket,  null: false, foreign_key: true
      t.references :user,    null: false, foreign_key: true
      t.string     :comment, null: false

      t.timestamps
    end
  end
end

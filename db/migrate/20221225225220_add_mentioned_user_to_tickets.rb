class AddMentionedUserToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :mentioned_user_id, :string, default: ''
  end
end

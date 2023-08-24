class AddUserIdToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_reference :meetings, :user, null: false, foreign_key: true
  end
end

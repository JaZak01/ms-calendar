class AddMenstruationInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_period_start, :date
    add_column :users, :cycle_length, :integer
    add_column :users, :menstruation_length, :integer
  end
end

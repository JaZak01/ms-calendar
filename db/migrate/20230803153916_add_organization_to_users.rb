class AddOrganizationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :organization, foreign_key: true
  end
end

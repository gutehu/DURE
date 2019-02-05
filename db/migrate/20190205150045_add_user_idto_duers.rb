class AddUserIdtoDuers < ActiveRecord::Migration[5.2]
  def change
    add_column :duers, :user_id, :integer
    add_reference :duers, :user_id, foreign_key: true
  end
end

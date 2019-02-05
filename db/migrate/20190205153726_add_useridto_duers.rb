class AddUseridtoDuers < ActiveRecord::Migration[5.2]
  def change
    add_column :duers, :user_id, :integer
  end
end

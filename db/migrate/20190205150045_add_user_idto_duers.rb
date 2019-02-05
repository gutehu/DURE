class AddUser_idtoDuers < ActiveRecord::Migration[5.2]
  def change
    add_column :duers, :user_id
  end
end

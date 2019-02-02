class CreateWorkunits < ActiveRecord::Migration[5.2]
  def change
    create_table :workunits do |t|
      t.string :name
      t.references :duer, foreign_key: true

      t.timestamps
    end
  end
end

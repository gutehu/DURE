class CreateUnderrisks < ActiveRecord::Migration[5.2]
  def change
    create_table :underrisks do |t|
      t.string :name
      t.string :frequency_score
      t.string :gravity_score
      t.string :mastery_score
      t.string :mesure_prevention_to_predict
      t.string :existing_mesure_prevention
      t.string :date
      t.string :responsable
      t.references :risk, foreign_key: true

      t.timestamps
    end
  end
end

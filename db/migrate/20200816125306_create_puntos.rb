class CreatePuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :puntos do |t|
      t.time :in
      t.time :out
      t.date :date
      t.text :note
      t.boolean :active
      t.boolean :weekend
      t.boolean :night_shift
      t.boolean :day
      t.boolean :night
      t.boolean :day_off

      t.references :company, null: false, foreign_key: true
      t.references :genba, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

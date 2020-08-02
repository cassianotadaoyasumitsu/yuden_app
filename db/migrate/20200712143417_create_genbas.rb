class CreateGenbas < ActiveRecord::Migration[6.0]
  def change
    create_table :genbas do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :contact
      t.string :closure

      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

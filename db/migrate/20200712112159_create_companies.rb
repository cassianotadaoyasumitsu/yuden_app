class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :furigana
      t.string :ceo
      t.string :address
      t.string :address2
      t.string :phone
      t.string :fax
      t.string :email
      t.string :contact
      t.date :closure

      t.timestamps
    end
  end
end

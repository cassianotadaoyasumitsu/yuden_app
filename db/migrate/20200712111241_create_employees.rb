class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :furigana
      t.string :address
      t.string :phone
      t.string :email
      t.string :role
      t.integer :level_employee
      t.string :job_exp
      t.string :pay_number
      t.date :started_date
      t.boolean :licence1, default: false
      t.boolean :licence2, default: false
      t.boolean :licence3, default: false
      t.boolean :licence4, default: false
      t.boolean :licence5, default: false
      t.date :healthy_exam
      t.date :drive_licence
      t.string :document
      t.date :document_date
      t.string :passport
      t.date :passport_date

      t.timestamps
    end
  end
end

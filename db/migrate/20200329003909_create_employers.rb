class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|
      t.references :account, null: false, foreign_key: true
      t.string :name
      t.integer :num_covid_cases
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end

class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
      t.references :account, null: false, foreign_key: true
      t.string :profession
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :degree
      t.date :grad_date
      t.string :exp_position
      t.text :exp_description
      t.date :exp_from
      t.date :exp_to
      t.string :zipcode

      t.timestamps
    end
  end
end

class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :applicant, null: false, foreign_key: true
      t.references :opening, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

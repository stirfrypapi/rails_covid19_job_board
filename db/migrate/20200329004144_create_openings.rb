class CreateOpenings < ActiveRecord::Migration[6.0]
  def change
    create_table :openings do |t|
      t.references :employer, null: false, foreign_key: true
      t.date :date_posted
      t.string :urgency
      t.string :title
      t.text :description
      t.date :deadline

      t.timestamps
    end
  end
end

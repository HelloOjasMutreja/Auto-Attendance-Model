class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :date
      t.string :status
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end

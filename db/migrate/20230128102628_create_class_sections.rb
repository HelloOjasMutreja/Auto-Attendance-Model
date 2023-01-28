class CreateClassSections < ActiveRecord::Migration[7.0]
  def change
    create_table :class_sections do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :attendance, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end

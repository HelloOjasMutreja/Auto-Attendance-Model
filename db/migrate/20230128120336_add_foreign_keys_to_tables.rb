class AddForeignKeysToTables < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :class_section_id, :integer
    add_column :students, :attendance_id, :integer
    add_column :students, :class_section_id, :integer
    add_foreign_key :students, :class_sections, column: :class_section_id
    add_foreign_key :attendances, :class_sections
    add_foreign_key :students, :attendances, column: :attendance_id
    add_foreign_key :class_sections, :users, column: :user_id
  end
end

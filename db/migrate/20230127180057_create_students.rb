class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :admission_number
      t.string :name
      t.string :mobile_number

      t.timestamps
    end
  end
end

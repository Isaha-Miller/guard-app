class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students, id: false do |students|
      students.primary_key :CWID
      students.string :f_name, null: false
      students.string :l_name, null: false
      students.int :shifts #number of shifts sat this semester
      students.char :company
      students.boolean :inSeason #are they an athleat that is in season
      students.text :monday #periods that people have class on monday
      students.text :tuesday
      students.text :wednesday
      students.text :thursday
      students.text :friday
      
    end
  end
end
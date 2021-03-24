class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name #create a column on people called first_name which is a string
      t.integer :age #create a column on people called age which is an integer
    end
  end
end

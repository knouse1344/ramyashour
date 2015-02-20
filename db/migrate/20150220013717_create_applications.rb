class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :age
      t.text :results
      t.text :training

      t.timestamps
    end
  end
end

class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :name
      t.string :age
      t.string :place
      t.string :phone_no

      t.timestamps
    end
  end
end

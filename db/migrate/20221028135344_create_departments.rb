class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string  :title,  null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end

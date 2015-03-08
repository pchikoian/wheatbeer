class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string  :name, null: false
      t.string  :phone, null: false
      t.string  :email
      t.string  :birth
      t.boolean :male

      t.timestamps null: false
    end
  end
end

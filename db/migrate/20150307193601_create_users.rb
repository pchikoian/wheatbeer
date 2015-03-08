class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email
      t.string :birth

      t.timestamps null: false
    end
  end
end

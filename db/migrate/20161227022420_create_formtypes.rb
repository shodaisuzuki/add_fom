class CreateFormtypes < ActiveRecord::Migration
  def change
    create_table :formtypes do |t|
      t.string :label
      t.string :kind

      t.timestamps null: false
    end
  end
end

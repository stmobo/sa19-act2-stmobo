class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.primary_key :id
      t.string :name
      t.string :text
      t.datetime :create_time

      t.timestamps
    end
  end
end

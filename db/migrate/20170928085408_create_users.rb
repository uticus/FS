class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :api_key
      t.string :name
      t.string :description
      t.string :manager
      t.datetime :registered

      t.timestamps
    end
  end
end

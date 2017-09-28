class CreateFaces < ActiveRecord::Migration[5.1]
  def change
    create_table :faces do |t|

      t.timestamps
    end
  end
end

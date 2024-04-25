class CreateDogsitters < ActiveRecord::Migration[7.1]
  def change
    create_table :dogsitters do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end

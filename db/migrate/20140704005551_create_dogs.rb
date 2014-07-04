class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.references :user, index: true
      t.string :name
      t.string :breed
      t.datetime :bday

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.date :birthday
      t.string :archetype

      t.timestamps
    end
  end
end

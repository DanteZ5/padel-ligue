class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone_number
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end

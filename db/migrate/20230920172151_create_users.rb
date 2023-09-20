class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.datetime :last_sign_in_at

      t.timestamps
    end
  end
end

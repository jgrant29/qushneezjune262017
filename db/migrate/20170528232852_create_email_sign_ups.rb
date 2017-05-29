class CreateEmailSignUps < ActiveRecord::Migration[5.0]
  def change
    create_table :email_sign_ups do |t|
      t.string :email
      t.boolean :notification

      t.timestamps
    end
  end
end

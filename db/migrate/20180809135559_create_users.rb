class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :student_number
      t.text :password
      t.text :tokens
      t.boolean :first_usage, default: true
      t.text :contact
      t.boolean :email_notification, default: true
      t.boolean :sms_notification, default: false
      t.timestamps
    end
    # add_column :first_usage, :boolean, default: true
  end
end

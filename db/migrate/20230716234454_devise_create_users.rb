# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## User Type
      t.boolean :is_user, null: false, default: false
      t.boolean :is_garage, null: false, default: false
      t.boolean :is_service, null: false, default: false
      t.boolean :is_admin, null: false, default: false

      ## User Info
      t.string :name, null: false, default: ""
      t.string :username, null: false, default: ""
      t.string :bio, null: false, default: ""
      t.string :location, null: false, default: ""
      t.string :website, null: false, default: ""
      t.string :role, null: false, default: ""
      t.string :status, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :mobile_phone, null: false, default: ""
      t.string :whatsapp, null: false, default: ""

      ## Garage Info
      t.string :garage_name, null: false, default: ""
      t.string :garage_bio, null: false, default: ""
      t.string :garage_address, null: false, default: ""
      t.string :garage_city, null: false, default: ""
      t.string :garage_state, null: false, default: ""
      t.string :garage_zip, null: false, default: ""
      t.string :garage_phone, null: false, default: ""
      t.string :garage_mobile_phone, null: false, default: ""
      t.string :garage_whatsapp, null: false, default: ""
      t.string :garage_website, null: false, default: ""
      t.string :garage_email, null: false, default: ""
      t.string :garage_hours, null: false, default: ""
      t.string :garage_services, null: false, default: ""
      t.string :garage_certifications, null: false, default: ""
      t.string :garage_payment_options, null: false, default: ""

      ## Services info
      t.string :service_name, null: false, default: ""
      t.string :service_bio, null: false, default: ""
      t.string :service_address, null: false, default: ""
      t.string :service_city, null: false, default: ""
      t.string :service_state, null: false, default: ""
      t.string :service_zip, null: false, default: ""
      t.string :service_phone, null: false, default: ""
      t.string :service_mobile_phone, null: false, default: ""
      t.string :service_whatsapp, null: false, default: ""
      t.string :service_website, null: false, default: ""
      t.string :service_email, null: false, default: ""
      t.string :service_hours, null: false, default: ""
      t.string :service_services, null: false, default: ""
      t.string :service_certifications, null: false, default: ""
      t.string :service_payment_options, null: false, default: ""



      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end

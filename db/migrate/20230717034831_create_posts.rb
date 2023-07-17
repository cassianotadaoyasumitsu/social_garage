class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      ## Car post
      t.string :title, null: false, default: ''
      t.text :body, null: false, default: ''
      t.string :contact, null: false, default: ''
      t.string :location, null: false, default: ''
      t.string :category, null: false, default: ''
      t.string :status, null: false, default: ''
      t.string :value, null: false, default: ''
      t.string :km, null: false, default: ''
      t.string :year, null: false, default: ''
      t.string :color, null: false, default: ''
      t.string :gear, null: false, default: ''
      t.string :brand, null: false, default: ''
      t.string :model, null: false, default: ''
      t.string :version, null: false, default: ''
      t.string :fuel, null: false, default: ''
      t.text :description, null: false, default: ''
      t.string :rank, null: false, default: ''
      t.string :detail, null: false, default: ''
      t.string :payment_type, null: false, default: ''
      t.string :delivery, null: false, default: ''
      t.string :warranty, null: false, default: ''
      t.string :plate, null: false, default: ''
      t.string :shaken, null: false, default: ''
      t.string :shaken_until, null: false, default: ''

      ## Service post
      t.string :service_type, null: false, default: ''
      t.string :service_category, null: false, default: ''
      t.string :service_status, null: false, default: ''
      t.string :service_value, null: false, default: ''
      t.string :service_title, null: false, default: ''
      t.string :service_contact, null: false, default: ''
      t.string :service_location, null: false, default: ''
      t.string :service_address, null: false, default: ''
      t.string :service_phone, null: false, default: ''
      t.text :service_body, null: false, default: ''
      t.string :service_rank, null: false, default: ''
      t.string :service_detail, null: false, default: ''
      t.string :service_payment_type, null: false, default: ''
      t.string :service_delivery, null: false, default: ''
      t.string :service_warranty, null: false, default: ''

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

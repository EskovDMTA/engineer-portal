class CreateBuldings < ActiveRecord::Migration[7.0]
  
  def change
    create_table :object do |t|
      t.string :name, null: false
      t.string :developer_company
      # t.references :material
      t.integer :facing_area, null: true
      # t.string :engineer
      # t.string :foreman
      t.string :drawing, null: true
      t.string :photo, null: true
      t.string :acts, null: true

      t.timestamps
    end

    def change
      create_table :users do |t|
        t.string :name
        t.string :lastname
        t.string :phone_number
        t.string :telegram
        t.string :status
        t.string :object, null: true

        t.timestamps
      end

    def change
      create_table :material do |t|
        # t.string :object
        t.string :name
        t.integer :count

        t.timestamps
      end

    def change
      create_table :bind do |t|
        t.string :object
        t.string :from_users
        t.string :name
        t.integer :count


        t.timestamps
      end

  end
end

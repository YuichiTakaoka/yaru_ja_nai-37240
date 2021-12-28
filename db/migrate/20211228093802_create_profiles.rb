class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name,             null: false
      t.integer :position_id,     null: false
      t.text :consept,            null: false
      t.integer :depertment_id,   null: false
      t.integer :division_id,     null: false
      t.integer :license_id,         null: false
      t.text :strength
      t.text :weakness
      t.references :user,         null: false, foreign_key: true

      t.timestamps
    end
  end
end

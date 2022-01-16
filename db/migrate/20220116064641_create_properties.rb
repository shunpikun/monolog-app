class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string     :name,         null: false
      t.text       :info,         null: false
      t.integer    :frequency_id, null: false
      t.string     :storage,      null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :amount
      t.bigint :user_id
      t.text :note
      t.bigint :tag_id, array: true
      t.datetime :happen_at

      t.timestamps
    end
  end
end

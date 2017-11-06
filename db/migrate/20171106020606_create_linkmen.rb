class CreateLinkmen < ActiveRecord::Migration[5.1]
  def change
    create_table :linkmen do |t|
      t.string :name
      t.string :number
      t.integer :user_id
      t.timestamps
    end
  end
end

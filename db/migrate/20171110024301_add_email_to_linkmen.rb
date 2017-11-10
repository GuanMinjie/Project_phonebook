class AddEmailToLinkmen < ActiveRecord::Migration[5.1]
  def change
    add_column :linkmen, :email, :string
  end
end

class AddCommentToLinkmen < ActiveRecord::Migration[5.1]
  def change
    add_column :linkmen, :comment, :string
  end
end

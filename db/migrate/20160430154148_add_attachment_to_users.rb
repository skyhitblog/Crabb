class AddAttachmentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attachment, :string
  end
end

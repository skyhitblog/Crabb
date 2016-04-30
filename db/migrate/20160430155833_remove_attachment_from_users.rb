class RemoveAttachmentFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :attachment, :string
  end
end

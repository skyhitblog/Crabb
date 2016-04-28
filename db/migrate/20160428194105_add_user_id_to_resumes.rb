class AddUserIdToResumes < ActiveRecord::Migration

  add_column :resumes, :user_id, :integer

  def change
  end
end

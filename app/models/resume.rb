class Resume < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
  attr_accessible :user_id
  validates :user_id,
              :presence => true
  belongs_to :user
end

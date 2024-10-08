class AttachmentUploader < CarrierWave::Uploader::Base
  storage :fog

#  include CarrierWave::MimeTypes
#  process :set_content_type

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(pdf jpg doc htm html docx)
  end
end

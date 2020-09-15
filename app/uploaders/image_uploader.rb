# frozen_string_literal: true

class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.production?
    include Cloudinary::CarrierWave

    def public_id
      "#{model.model_name.collection}/#{SecureRandom.uuid}"
    end
  else
    storage :file

    def filename
      "#{SecureRandom.uuid}.#{file.extension}"
    end

    def store_dir
      "uploads/#{model.model_name.collection}"
    end
  end
end

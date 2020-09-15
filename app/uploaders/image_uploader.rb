# frozen_string_literal: true

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def public_id
    "#{model.model_name.collection}/#{model.id}"
  end
end

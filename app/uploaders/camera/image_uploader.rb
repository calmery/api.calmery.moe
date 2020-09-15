# frozen_string_literal: true

class Camera::ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end

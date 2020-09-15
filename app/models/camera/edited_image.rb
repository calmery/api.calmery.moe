# frozen_string_literal: true

class Camera::EditedImage < ApplicationRecord
  after_initialize :set_id

  mount_uploader :image, ImageUploader

  def image_url
    return Cloudinary::Utils.cloudinary_url(image.public_id) if Rails.env.production?

    image.url
  end

  def og_image_url
    if Rails.env.production?
      return Cloudinary::Utils.cloudinary_url(image.public_id, background: '#fff', crop: :pad, height: 630, width: 1200)
    end

    image.url
  end

  private

  def set_id
    self.id ||= SecureRandom.uuid
  end
end

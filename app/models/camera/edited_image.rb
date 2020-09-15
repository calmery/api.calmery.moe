# frozen_string_literal: true

class Camera::EditedImage < ApplicationRecord
  after_initialize :set_id

  mount_uploader :image, ImageUploader

  def image_url
    Cloudinary::Utils.cloudinary_url image.public_id
  end

  def og_image_url
    Cloudinary::Utils.cloudinary_url(image.public_id, :background => '#fff', :crop => :pad, :height => 630, :width => 1200)
  end

  private

  def set_id
    # ImageUploader 内で参照したいので new した時点で ID を作成する
    self.id ||= SecureRandom.uuid
  end
end

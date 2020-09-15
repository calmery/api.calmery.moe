# frozen_string_literal: true

class Camera::ImagesController < Camera::ApplicationController
  def show; end

  def create
    image = params[:image]

    return status 400 if image.nil?

    camera_edited_image = Camera::EditedImage.new
    camera_edited_image.image = image
    camera_edited_image.save!
  end
end

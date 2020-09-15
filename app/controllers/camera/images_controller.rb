# frozen_string_literal: true

class Camera::ImagesController < Camera::ApplicationController
  def show; end

  def create
    camera_edited_image = Camera::EditedImage.new
    camera_edited_image.image = params[:image]
    camera_edited_image.save!
  end
end

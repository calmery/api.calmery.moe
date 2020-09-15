# frozen_string_literal: true

class Camera::ImagesController < Camera::ApplicationController
  def show
    @edited_image = Camera::EditedImage.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    status 404
  end

  def create
    image = params[:image]

    return status 400 if image.nil?

    @edited_image = Camera::EditedImage.new
    @edited_image.image = image
    @edited_image.save!
  end
end

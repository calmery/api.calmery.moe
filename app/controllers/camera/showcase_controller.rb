# frozen_string_literal: true

class Camera::ShowcaseController < Camera::ApplicationController
  def index
    redirect_to camera_showcase_path 1
  end

  def show
    @edited_images = Camera::EditedImage.page(params[:page] || 1).per(10).map(&:image_url)
  end
end

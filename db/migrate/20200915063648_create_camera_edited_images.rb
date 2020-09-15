# frozen_string_literal: true

class CreateCameraEditedImages < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_edited_images, id: :uuid do |t|
      t.string :image, null: false

      t.timestamps
    end
  end
end

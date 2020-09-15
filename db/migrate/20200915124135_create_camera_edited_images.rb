# frozen_string_literal: true

class CreateCameraEditedImages < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_edited_images, id: false do |t|
      t.string :id, null: false, index: true, primary_key: true, unique: true
      t.string :image, null: false

      t.timestamps
    end
  end
end

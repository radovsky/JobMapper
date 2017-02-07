class Company < ApplicationRecord
  has_attached_file :logo_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo_image, content_type: /\Aimage\/.*\z/
end

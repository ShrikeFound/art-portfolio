class Project < ApplicationRecord
  has_many_attached :images
  validates :title, presence: true
  validates :description, presence: true
  validate :image_type

private 

def image_type 
  if images.attached? ==false 
    errors.add(:images, "are missing!")
  end
  images.each do |image|
    if !image.content_type.in?(%('image/jpeg image/jpg image/png image/svg'))
      errors.add(:images, 'need to be a JPG or PNG')
    end
  end
end

end

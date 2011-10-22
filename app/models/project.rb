class Project < ActiveRecord::Base
  has_many :slides
  
  def cover_image
    return "//placehold.it/214x214" if self.slides.empty?
    self.slides.first.image.url(:thumb)
  end
end

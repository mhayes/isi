class Slide < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, :styles => {:original => "800x600>", :thumb => "214x214#"}
end

class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  validate :must_be_isi_staff, :on => :save
  
private
  def must_be_isi_staff
    errors.add(:email, 'must be isi staff') unless self.email.split("@").last.downcase == "intakescreensinc.com"
  end
end

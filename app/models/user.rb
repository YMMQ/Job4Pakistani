class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :userinfos
  has_many :educations
  has_many :experiences
  has_many :joblizeds
  has_many :advertises


  has_attached_file :avatar, :styles => { :medium => "400x400>", :thumb => "100x100>" },:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end

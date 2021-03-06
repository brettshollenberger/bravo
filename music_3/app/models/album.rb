class Album < ActiveRecord::Base
  attr_accessible :title
  validates :title, :presence => true
  has_many :songs, :dependent => :destroy
  belongs_to :artist
end

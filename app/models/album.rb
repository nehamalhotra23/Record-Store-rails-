class Album < ApplicationRecord
  has_many :album_artists
   has_many :artists, :through => :album_artists

  # has_and_belongs_to_many(:artists)

  has_many :songs, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_album)

  private
  def titleize_album
    self.name = self.name.titleize
  end
end



# learn more about validations on: https://edgeguides.rubyonrails.org/active_record_validations.html

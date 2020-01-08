require 'rails_helper'

describe Album do
it { should have_many(:songs) }
it { should validate_presence_of :name }
it { should validate_length_of(:name).is_at_most(100)}
# it {should have_and_belong_to_many :artists} this test suppose to fails AFTER adding has_many_through

it { should have_many(:artists).through(:album_artists) }

it('titleizes the name of the album') do
  album = Album.create({name: "giant steps", genre: "jazz"})
  expect(album.name()).to (eq("Giant Steps"))
end
end

require 'rails_helper'

describe Artist do
  # it { should have_and_belong_to_many :albums} this test suppose to fails AFTER adding has_many_through

  it { should have_many(:albums).through(:album_artists) }
end

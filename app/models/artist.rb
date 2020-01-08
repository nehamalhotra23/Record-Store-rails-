class Artist < ApplicationRecord
  has_many :album_artists
  has_many :albums, :through => :album_artists

  # has_and_belongs_to_many(:albums)
end

# has_many :album_artists
# has_many :albums, through => :album_artists

# If we want to add additional attributes, validations, callbacks or other code to the join table between artists and albums, we should make a has_many :through association between the two classes. Many developers believe that using a has_many :through association is always preferable to using a has_and_belongs_to_many association even if there are no fields on the join table. Projects often change over time in ways we can't anticipate. A has_many :through association gives us additional flexibility if we do decide we need fields on the join table later. It's much easier to set up a has_many :through association at the beginning of a project than it is to change a has_and_belongs_to_many association when a project is well under way.
#
# That being said, the naming convention is very tricky if we still want our join table to combine the names of the two classes. It would be easier if the join table between artists and albums was named something like sessions. However, we will stick with the combination of artists and albums because there is no obvious name for the join table and because of this tricky naming.

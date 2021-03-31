class Artwork < ApplicationRecord

    belongs_to :artist,
        foreign_key: :user_id,
        class_name: :User,
        optional: true
    
    has_many :artwork_shares
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

end
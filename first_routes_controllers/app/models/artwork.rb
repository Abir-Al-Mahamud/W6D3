class Artwork < ApplicationRecord

    belongs_to :artist,
        foreign_key: :user_id,
        class_name: :User,
        optional: true
    

end
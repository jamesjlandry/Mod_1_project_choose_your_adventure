class User < ActiveRecord::Base

    
    belongs_to(:role)
    belongs_to(:story)
    has_many(:trackers)
    has_many(:stories, through: :trackers)

end
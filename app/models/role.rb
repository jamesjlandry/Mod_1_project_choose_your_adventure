class Role < ActiveRecord::Base

    belongs_to(:story)
    has_many(:users)
    # has_many(:stories, through: :users)

end
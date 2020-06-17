class Story < ActiveRecord::Base

    has_many(:roles)
    has_many(:users)
    has_many(:trackers)
    has_many(:users, through: :tracker)
    belongs_to :option_1_link, class_name: "Story", optional: true
    belongs_to :option_2_link, class_name: "Story", optional: true
    # has_many(:roles, through: :users)

end
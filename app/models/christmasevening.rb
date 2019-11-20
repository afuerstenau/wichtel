class Christmasevening < ApplicationRecord
    belongs_to :year
    belongs_to :giver, class_name: "Participant", foreign_key: "giver_id"
    belongs_to :receiver, class_name: "Participant", foreign_key: "receiver_id"
end

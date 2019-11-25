class Christmasevening < ApplicationRecord
    belongs_to :giver, class_name: "Participant", foreign_key: "giver_id"
    belongs_to :receiver, class_name: "Participant", foreign_key: "receiver_id"

    validates :giver, uniqueness: { scope: :year,
        message: "sollte jedes Jahr nur einmal sein" }

    validate :same_person_cannot_be_giver_and_receiver

    def same_person_cannot_be_giver_and_receiver
        errors.add(:giver, " und Empfänger kann nicht die gleiche Person sein") if giver == receiver
    end
end

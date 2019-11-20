class Participant < ApplicationRecord
    has_many :christmasevenings
    has_many :receivers, :through => :christmasevenings
end

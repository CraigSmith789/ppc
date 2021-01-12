class Party < ApplicationRecord
    belongs_to :category
    has_many :invites
    has_many :guests, through: :invites
    accepts_nested_attributes_for :category

    def self.order_by_date
        self.order(date: :desc) # or ("date ASC")
    end

    def is_private
        self.private ? "This party is private." : "This party is public."
    end
end

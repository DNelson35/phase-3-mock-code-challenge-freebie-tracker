class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companys, through: :freebies

    def received_one?(item_name)
        freebies.item_name.any? { |freebie| freebie.item_name == item_name }
    end

    def give_away(freebie, dev)
        freebie.update(dev: dev) unless freebie.dev != self
    end
end

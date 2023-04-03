class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    #can use dev_id or dev in argument list while using one or the other it must fallow the same convention
    
    def give_freebie(dev, item_name, value)
        Freebie.create(dev: dev, item_name: item_name, value: value, company: self)
    end

    def self.oldest_company
        self.minimum(:founding_year)
    end
end

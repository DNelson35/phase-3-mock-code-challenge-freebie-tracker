class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    #can be done with or without self inside the method
    def print_details
        puts "#{dev.name} owns a #{item_name} from #{company.name}"
    end
end

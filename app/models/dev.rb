class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.where(item_name: item_name).size > 0
    end
    
    def give_away(dev, freebie)
          freebie.update(dev: dev) if freebie.dev.id == self.id
            
            
    end
end

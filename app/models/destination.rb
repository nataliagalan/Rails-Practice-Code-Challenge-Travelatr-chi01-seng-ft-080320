class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts


# find bloggers that have written about specific destination
# find their ages
# add their ages
# divide by number of blogger that have written....

def average_blogger_age
    sum = self.bloggers.uniq.sum do |blogger|
        blogger.age
    end
    average = sum.to_f / self.bloggers.count
    average.round(2)
end

end
#Blogger -< Post >- Destination
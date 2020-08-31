class Post < ApplicationRecord
    belongs_to :destination 
    belongs_to :blogger

    validates :title, presence: true
    validates :content, length: {minimum: 100}

    # goal: user to see a like button - to like and view like count increase by 1
    # button_to "Like #{@post.likes}", post_path(post), method: get

    def increase_by_one
        self.likes += 1
    end

end
#Blogger -< Post >- Destination
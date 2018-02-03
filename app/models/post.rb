class Post < ActiveRecord::Base
    
     validates :title, :body, presence: true
    
    belongs_to :user

    def length_of_post
    length = self.body.length
    count = 0
    numOfWords = 1
    while count <= length
        if self.body[count] == ' '
            numOfWords = numOfWords + 1
        end
        count = count + 1
    end
    
    # 2 seconds per words is average reading time
    if numOfWords/2 < 1
        return "Under 4 seconds"
    else
    #    return (numOfWords/2).to_s + " seconds"
    return numOfWords
    end

    end
    
    
end

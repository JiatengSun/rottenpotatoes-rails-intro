class Movie < ActiveRecord::Base

    def self.all_ratings
      return ['G', 'PG', 'PG-13' ,'R']
    end
    
    def self.with_ratings(ratings_list, sort_by)
        if !ratings_list.empty?
            if sort_by.empty?
                return self.where(rating: ratings_list)
            else
                return self.where(rating: ratings_list).order(sort_by)
            end
        else
            if sort_by.empty?
                return self.all
            else
                return self.all.order(sort_by)
            end
        end
    end
end
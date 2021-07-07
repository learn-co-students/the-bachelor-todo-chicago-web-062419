require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner = 0
  data.each do |seasonkey, contestantarray|
    if seasonkey == season
      contestantarray.each do |contestanthash|
        contestanthash.each do |stat, data|
          if data == "Winner"
            winner = contestanthash["name"]
          end
        end
      end
    end
  end
  winner.split(' ').first
end

def get_contestant_name(data, occupation)
  # code here
  jobholder = 0
  data.each do |seasonkey, contestantarray|
    contestantarray.each do |contestanthash|
      contestanthash.each do |stat, data|
        if data == occupation
          jobholder = contestanthash["name"]
        end
      end
    end
  end
  jobholder
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |seasonkey, contestantarray|
    contestantarray.each do |contestanthash|
      contestanthash.each do |stat, data|
        if data == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |seasonkey, contestantarray|
    contestantarray.each do |contestanthash|
      contestanthash.each do |stat, data|
        if data == hometown
          occupation << contestanthash["occupation"]
        end
      end
    end
  end
  occupation.first
end

def get_average_age_for_season(data, season)
  # code here 
  values = []
  data.each do |seasonkey, contestantarray|
    if seasonkey == season
      contestantarray.each do |contestanthash|
          values << contestanthash["age"].to_f
      end
    end
  end
  
  average = values.sum/values.size
  average.round(0)
end

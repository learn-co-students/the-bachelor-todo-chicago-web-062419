require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |seasons, data_values|
    if seasons == season
      data_values.each do |x|
        if x["status"] == ("Winner")
          #binding.pry
          return x["name"].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, data_values|
    data_values.each do |x|
      if x["occupation"] == (occupation)
        #binding.pry
        return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, data_values|
    data_values.each do |x|
      if x["hometown"] == (hometown)
        #binding.pry
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, data_values|
    data_values.each do |x|
      if x["hometown"] == (hometown)
        #binding.pry
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
avg_array = []
  data.each do |seasons, data_values|
    if seasons == season
      data_values.each do |x|
        #binding.pry
        avg_array << x["age"].to_f
      end
    end
  end
  #binding.pry
  average = avg_array.sum / avg_array.length
  return average.round
end

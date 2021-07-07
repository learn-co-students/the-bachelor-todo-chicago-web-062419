require 'pry'

# Method 1
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
  contestant
end

# Method 2
def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    season[1].each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
  contestant
end

# Method 3
def count_contestants_by_hometown(data, hometown)
  # code here
  number_of_contestants = 0
  data.each do |season, data|
    data.each do |contestant|
      if contestant["hometown"] == hometown
        number_of_contestants += 1
      end
    end
  end
  number_of_contestants
end

# Method 4
def get_occupation(data, hometown)
  # code here
  data.each do |season, data|
    data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
  contestant
end

# Method 5
def get_average_age_for_season(data, season)
  # code here
  contestant_ages = 0
  number_of_contestants = 0
  data[season].each do |contestant|
    number_of_contestants += 1
    contestant_ages += contestant["age"].to_f
  end
  return (contestant_ages/number_of_contestants).round
end

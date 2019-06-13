def get_first_name_of_season_winner(data, season)
  # code here
    data[season].each do |person| 
            #accessing the data for each season
      person.each do |key,value| 
        if value == "Winner"
          first_name = person["name"]
          return first_name.split(' ').first # convert string to array and return the first element in the array
          end #ends the if statement
        end  #ends the person.each statement
      end  # ends the first_name statement
  end #ends the method

def get_contestant_name(data, occupation)
  # code here
  data.each do |season,array|
    array.each do |person|
      person.each do |key,value|
      if value == occupation
        return person["name"]
      end
    end
  end 
end 
end 

def count_contestants_by_hometown(data, hometown)
  # code here
  
hometown_count = 0

  data.each do |season,array|
    array.each do |person|
      person.each do |key,value|
      if value == hometown
        hometown_count += 1
      end
    end
  end 
end 
return hometown_count
 
end

def get_occupation(data, hometown)
  # code here

  data.each do |season,array|
    array.each do |person|
      person.each do |key,value|
      if value == hometown
        return person["occupation"]
        break
      end
    end
  end 
end 
end 

def get_average_age_for_season(data, season)
  # code here
  
  count = 0 
  total = 0

  data[season].each do |person|
      person.each do |key,value|
      if key == "age"
        count += 1 
        total += value.to_f
      end
    end
  end 

average = (total/count).round(0)

end

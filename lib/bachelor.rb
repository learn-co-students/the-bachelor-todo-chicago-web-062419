require "pry"

# def get_first_name_of_season_winner(data, season)
#   winner_first_name = ""

  
#   data.each do | ind_season, ind_contestant|
#     ind_contestant.each do |contestant_data|
#       binding.pry
#       if contestant_data["status"] == "winner"
#         winner_first_name = contestant_data["name"].split(" ")[0]
#       end
#     end
#   end
#   # winner_first_name
# end

def get_first_name_of_season_winner(data, season)
  	winner_first_name = ""

  	data[season].each do |stats|
		stats.each do |ind_stat, value|
			if value == "Winner"
				winner_first_name = stats["name"].split(" ")[0]
			end
		end
  	end
	winner_first_name
end


def get_contestant_name(data, occupation)
	contestant_name = ""

  	data.each do | ind_season, ind_contestant|
		ind_contestant.each do |contestant_data|
			if contestant_data["occupation"] == occupation
				contestant_name = contestant_data["name"]

			end
		end
	end
	contestant_name
end

def count_contestants_by_hometown(data, hometown)
	counter = 0

	data.each do | ind_season, ind_contestant|
		ind_contestant.each do |contestant_data|
			# binding.pry
			if contestant_data["hometown"] == hometown
				counter += 1
			end
		end
	end
	counter
end

def get_occupation(data, hometown)
	occupation = ""

	data.each do | ind_season, ind_contestant|
		ind_contestant.each do |contestant_data|
			if contestant_data["hometown"] == hometown
				occupation = contestant_data["occupation"]
				break
			end 
		end
	end
	occupation
end

def get_average_age_for_season(data, season)
	count_of_contestants = 0
	total_age_for_season = 0
	average_age_for_season = 0

	data[season].each do |stats|
		stats.each do |ind_stat, value|
			count_of_contestants += 1
			total_age_for_season = total_age_for_season + stats["age"].to_f
			average_age_for_season = total_age_for_season.to_f / count_of_contestants.to_f
			# binding.pry
		end
	end
	# binding.pry
	average_age_for_season.round
end

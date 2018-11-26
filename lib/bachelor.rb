def get_first_name_of_season_winner(data, season)
  winner = data[season].select { |entry| entry['status'] == 'Winner' }
  winner[0]['name'].split[0]
end

def get_contestant_name(data, occupation)
  contestant = data.values.each do |entry|
    if entry['occupation'] == occupation
      return entry['name']
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

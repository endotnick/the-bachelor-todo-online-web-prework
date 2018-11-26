def get_first_name_of_season_winner(data, season)
  winner = data[season].select { |entry| entry['status'] == 'Winner' }
  winner[0]['name'].split[0]
end

def get_contestant_name(data, occupation)
  data.each do |seasons, entries|
    entries.each do |entry|
      if entry['occupation'] == occupation
        return entry['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, entries|
    entries.each do |entry|
      if entry['hometown'] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = ''
  data.each do |seasons, entries|
    entries.each do |entry|
      if entry['hometown'] == hometown
        occupation << entry['occupation']
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
end

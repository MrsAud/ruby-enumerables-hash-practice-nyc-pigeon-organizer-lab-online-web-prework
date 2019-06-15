def nyc_pigeon_organizer(data)
  # create empty hash
  organized_pigeons = {}
  
  # search data for traits
  data.each do |traits, traits_hash|
    # search traits_hash for details
    traits_hash.each do |details, details_array|
      # search details_array for names
      details_array.each do |name|
        
        # if organized_pigeons[name] doesn't exist, create empty hash
        if organized_pigeons[name] == nil
          organized_pigeons[name] = {}
        end
        
<<<<<<< HEAD
        # if organized_pigeons[name][traits] doesn't exist, create empty array
        if organized_pigeons[name][traits] == nil
          organized_pigeons[name][traits] = []
        end
        
        # shovel details as strings into traits array
        organized_pigeons[name][traits] << details.to_s
=======
        # if organized_pigeons[name][details] doesn't exist, create empty array
        if organized_pigeons[name][details] == nil
          organized_pigeons[name][details] = []
        end
        
        # shovel traits as strings into empty array
        if data[traits][details].include?(name)
        organized_pigeons[name][details] << traits.to_s
        end
>>>>>>> 10f8831a97504c574f308898fde73736a9eed3a1
        
      end
    end
  end
  
  organized_pigeons
end

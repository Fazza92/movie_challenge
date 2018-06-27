class Movie
  def actual_movie_time
    # movie_hash = File.read('movie_list.json')
    # data_hash = JSON.parse(movie_hash)

    # data_hash.each do |movie| 
    #   puts movie["title"] 
    #   puts "Rated " + movie["rating"]
    #   puts movie["time"]
    #   puts "---------------------------"
    #   p actual_movie_time
    # end

      time = data_hash["time"]
      time_array = time.split(" ")
      p movie_in_minutes = (time_array[0].to_i * 60) + time_array[2].to_i
  end

  def calculate_time
    movie_hash = File.read('movie_list.json')
    data_hash = JSON.parse(movie_hash)

    data_hash.each do |movie| 
      puts movie["title"] 
      puts "Rated " + movie["rating"]
      puts movie["time"]
      puts "---------------------------"
      p actual_movie_time
    end
  end
end
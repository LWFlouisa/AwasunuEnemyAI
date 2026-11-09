def find_candidate
  ## Determining user data and user choice.
  value = File.read("_input/user/user_choice.txt").to_s.to_i

  user_data   = File.readlines("_data/user/candidates.txt") #.shuffle.uniq.sort
  user_choice = user_data[value]

  ## Processing AI focused data
  ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
  ai_initial_candidate = user_data[ai_choice]
  ai_search_limit      = user_data.size.to_i

  ai_search_limit.times do
    if ai_initial_candidate == user_choice
      puts "The specific candidate was found. Terminating proceding to interpretation..."

      old_candidates = File.read("_data/ai/old_candidates.txt")

      ai_data      = user_data[ai_choice]

      File.open("_data/ai/candidates.txt", "w") { |f|
        f.puts ai_data
        f.puts old_candidates
      }

      File.open("_data/ai/old_candidates.txt", "w") { |f|
        f.puts old_candidates
      }
    else
      puts "The specific candidate is not found..."
    end

    if ai_choice > user_data.size.to_i
      ai_choice = 0

      File.open("_data/ai/ai_choice.txt", "w") { |f|
        f.puts ai_choice
      }
    else
      ai_choice = ai_choice + 1

      File.open("_data/ai/ai_choice.txt", "w") { |f|
        f.puts ai_choice
      }
    end
  end

  ## AI processing data.
  ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
  ai_data              = File.readlines("_data/ai/candidates.txt")
  ai_search_limit      = ai_data.size.to_i
  ai_next_candidate    = ai_data[ai_choice]

  ai_search_limit.times do
    ## Create AI data from user data.
    #print ai_choice, ai_data.size, ai_data[ai_choice]
    #puts " "

    if ai_next_candidate == user_choice    
      old_agents = File.readlines("scripts/ai_scripts/old_agents.awa")
      new_agents = File.readlines("scripts/ai_scripts/agents.awa")

      #puts ai_final_candidate

      puts "Candidate found..."

      File.open("scripts/ai_scripts/agents.awa", "w") { |f|
        f.puts new_agents # ai_data[ai_choice]
        f.puts old_agents
      }

      File.open("scripts/ai_scripts/old_agents.awa", "w") { |f|
        f.puts old_agents
      }

      # Interpreter Here
      system("./bin/from_script/awasunu scripts/ai_scripts/agents.awa")
    else
      puts "Candidate is not yet found..."

      ai_choice = File.read("_data/ai/ai_choice.txt").to_s.to_i
      ai_data   = File.readlines("_data/ai/candidates.txt").shuffle.uniq.sort

      ai_search_limit      = ai_data.size.to_i
      ai_next_candidate    = ai_data[ai_choice]

      old_candidates = File.readlines("_data/ai/old_candidates.txt").shuffle.uniq.sort

      ai_data      = user_data[ai_choice]

      File.open("_data/ai/candidates.txt", "w") { |f|
        f.puts ai_data
        f.puts old_candidates
      }
    end
  end
end

find_candidate

bot_name = %Q(BIANCA) 
    
sore_kosan = Proc(Float64, Float64, String).new { | x, probability |
  x > probability ? %Q(#{bot_name}: #{x} has reached the highest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the highest limit in probability.)
}

shikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
  x < probability ? %Q(#{bot_name}: #{x} has reached the lowest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the lowest limit in probability.)
}

matawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
  x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium probability.) : %Q(#{bot_name}: #{x} is not floating around medium probability.)
}
      
puts sore_kosan.call(ARGV[0].to_f, ARGV[1].to_f)
puts shikashi_kosan.call(ARGV[2].to_f, ARGV[3].to_f)
puts matawa_kosan.call(ARGV[4].to_f, ARGV[5].to_f, ARGV[6].to_f)

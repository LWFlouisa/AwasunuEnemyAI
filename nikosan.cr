bot_name = %Q(BIANCA)

nisore_kosan = Proc(Float64, Float64, String).new { | x, probability |
  x > probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
}

nishikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
  x < probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
}

nimatawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
  x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium negative probability.) : %Q(#{bot_name}: #{x} is not floating around medium negative probability.)
}

puts nisore_kosan.call(ARGV[0].to_f, ARGV[1].to_f)
puts nishikashi_kosan.call(ARGV[2].to_f, ARGV[3].to_f)
puts nimatawa_kosan.call(ARGV[4].to_f, ARGV[5].to_f, ARGV[6].to_f)

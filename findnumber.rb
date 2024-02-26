# Trials definition
trials = 5

# Random number generation
rand_numb = rand(11)

# Initial game message
puts "🔮 Try to find the ✨ Magic Number ✨ ! (between 0 & 10 in #{trials} steps 🦶 max)"

trials_init = trials

while trials > 0
  usr_res = gets.chomp
  
  # Non-digital input processing
  if usr_res.match?(/\A\d+\z/)
    usr_res_num = usr_res.to_i
  else
    puts "💩 Not a number 🤭 Please Try again 🎲 !"
    next
  end
  
  msg = "you have #{trials -1} trial(s) left ⏳. #{"Please Try again 🎲 !" if (trials -1) > 0}"
  
  if usr_res_num == rand_numb
    puts "🎯 👏 Congratulations 🍾 ! ✨ The Magic Number ✨ = #{rand_numb}, 🥳 So you win 🏆 in #{trials_init - (trials - 1)} step(s) 🦶 !"
    break
  elsif usr_res_num > rand_numb
    puts "👇 Too High, #{msg}"
  else
    puts "👆 Too Low, #{msg}"
  end
  
  trials -= 1
end

# Message if no more trials
puts "⌛️ Sorry, you lose 🤭. The correct answer was ✨ #{rand_numb} ✨." if trials == 0

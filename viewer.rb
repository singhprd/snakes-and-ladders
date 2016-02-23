class Viewer

  def replay(log)
    for item in log
      puts "#{item.player.name} your go! Enter roll to roll"
      user_input = nil
        until user_input == 'roll'
          user_input = gets.chomp 
        end
      puts "#{item.player.name} rolled #{item.roll}"
      if(item.modifier != 0)
        puts "#{item.player.name} hit a #{item.modifier_type}! Moves #{item.modifier}"
      end
    end
    puts "The winner is #{item.player.name}"
  end
  
end
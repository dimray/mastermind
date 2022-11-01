class MasterMind

  def initialize

    possible_selections = [1,2,3,4,5,6,7,8]
    @selected_numbers = []
    4.times do
      a = possible_selections.sample
      possible_selections.delete(a)
      @selected_numbers.push(a)
    end

    def pick_numbers(previous_picks)
      picks = []
      for x in 0..3
      if previous_picks.length > 0
        puts "your previous picks:"
        p previous_picks
      end
      puts "Pick a number from 1 to 8 inclusive"
      picks[x] = (gets.chomp.to_i)
      puts "Your picks: #{picks}"  
      end
      picks
    end
  
  
    lives = 12
    previous_picks = []
    guesses = pick_numbers(previous_picks)
  
    while lives > 0 
      previous_picks.push(guesses)
      sleep(0.5) 
      correct_guesses = 0
      exact_guesses = 0
      if guesses == @selected_numbers
        puts "You are a genius! You got it!"
        break
      else 
        for i in 0..3
          if guesses[i] == @selected_numbers[i]
            exact_guesses +=1
          elsif @selected_numbers.include?(guesses[i])
            correct_guesses += 1
          end
        end
        lives -=1
        if lives == 0
          p "The numbers were #{@selected_numbers}" 
        else
          p "Exact matches: #{exact_guesses}"
          p "Inexact matches: #{correct_guesses}"
          
          guesses = pick_numbers(previous_picks)
        end
      end
    end



  end

   

end

jim = MasterMind.new











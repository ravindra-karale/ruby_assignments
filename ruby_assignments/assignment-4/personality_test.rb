load 'random_number.rb'
load 'questions.rb'
load 'answers.rb'
class PersonalityTest
  def initialize
    @score = 0
    @random_number
    @quesion
    @choice
    @que_no = 1
    @store_ans = Array.new
  end

  def main
    puts "Welcome to Persnality Test."
    obj = Random.new
    @random_number = obj.generate_random_number

    obj = Question.new
    @quesion = obj.set_question

    obj = Answers.new
    @choice = obj.get_choices

     @random_number.map{|x|
      puts ("Q" + @que_no.to_s + ": " + @quesion[x] + "\n")
      shuffle_choice = @choice.shuffle
      puts "a) "+ shuffle_choice[0] + " b) "+ shuffle_choice[1] + " c) "+ shuffle_choice[2] + " d) "+ shuffle_choice[3]
      puts "Choose from above choice."
      choice = gets.chomp
      if choice == "a"
        @store_ans.push(shuffle_choice[0])
      elsif choice == "b"
        @store_ans.push(shuffle_choice[1])
      elsif choice == "c"
        @store_ans.push(shuffle_choice[2])
      elsif choice == "d"
        @store_ans.push(shuffle_choice[3])
      else
        break
      end
      @que_no += 1
    }
    @store_ans.each{ |x|
      if x == "Disagree"
        @score += 1
      elsif x == "Neutral"
        @score += 2
      elsif x == "Agree"
        @score += 3
      elsif x == "Strongly Agree"
        @score += 4
      end
    }
    puts "Final Score:",@score
  end
end

obj = PersonalityTest.new
obj.main

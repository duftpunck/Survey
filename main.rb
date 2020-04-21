




survey_1 = Survey.new(:'survey_1')

loop do
  print 'Add question(or print e to end)'
  text= gets.chomp
  break if text == 'e'
  question = Question.new(text)
  survey_1.add_questions(question)
    loop do 
      puts 'Add variants(or print e to end):'
      var_text = gets.chomp
      break if var_text == 'e'
      variant = Variant.new(var_text)
      question.add_variant(variant)
    
    end
  
end

answers_sum = []
b = 0

puts 'Your email'
email = gets.chomp
puts 'Your name'
name = gets.chomp
puts 'Your surname'
surname = gets.chomp

user_1 = User.new(email, name, surname)

puts "Start test"
  survey_1.questions.each do |question| 
    puts question.text
    puts 'Print variant '
    question.variants.each do |variant|  
      puts variant.text
      puts variant.id
    end
   
      selected_variant = gets.to_i
      question.variants.each do |variant|
        if variant.id == selected_variant
         selected_variant = variant.rate
         answer = Answer.new(selected_variant)
         answers_sum.push(selected_variant)
        end 
      end
end   

answers_sum.map {|a| b += a}
puts "Yours resualt #{b}" 
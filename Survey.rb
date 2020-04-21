class Survey
  @@last_surv_id=0
  attr_accessor :name, :questions
  def initialize(name)
    @name = name
    @id = (@@last_surv_id += 1)
    @questions = []
  end

  def add_questions(question)
    @questions.push(question)
  end
  def show_question

     puts @questions 

  end

  def show_questions_with_variants
    @questions.map do |question|
      puts 'Questions'
      puts question.text
      puts 'Variants'
          question.variants.map do |variant|
          puts variant.text
          end
      end
  end
end
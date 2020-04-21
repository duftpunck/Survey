class Answer
   @@last_answer_id=0
  attr_accessor :id, :rate
  def initialize(rate)
    @id = (@@last_answer_id += 1)
    @rate = rate
  end
end

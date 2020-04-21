class Question
  @@last_question_id=0
  attr_accessor :text, :variants
  def initialize(text)
    @text = text
    @id = (@@last_question_id += 1)
    @variants = []
  end

  def add_variant(variant)
    @variants.push(variant)
  end

  def delete_variant(condition)
    @variants.delete_if {|variant| variant.id == condition || variant.text == condition}
  end
end
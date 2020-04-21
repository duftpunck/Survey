class Variant
 @@last_variant_id=0
  attr_accessor :text, :id, :rate
  def initialize(text)
    @text = text
    @id = (@@last_variant_id += 1)
    @rate = rand(1..10)
  end
end
class User
  @@last_id=0
  attr_accessor :email, :name, :surname
  def initialize(email, name, surname)
    @email = email
    @name = name
    @surname = surname
    @id = (@@last_id += 1)
  end
end
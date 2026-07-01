class User
  attr_accessor :name, :email

  def initialize (attributes = {}) # attributes are hashes cause it contains key and value?
    @name = attributes[:name]
    @email = attributes[:email]
  end
  def formatted_email
    `#{@name} <#{@email}>`
  end
end

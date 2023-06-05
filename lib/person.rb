require "pry"
class Person
  # your code here
  # attr_accessor :name, :height, :eye_color
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)

puts susan.height

# binding.pry 0
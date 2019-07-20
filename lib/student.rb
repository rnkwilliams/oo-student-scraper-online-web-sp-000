class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  #The #new  or initialize method takes in an argument of a hash and sets
  #that new student's attributes using the key/value pairs of that hash.
  #It also adds that new student to the Student class' collection of all
  #existing students, stored in the `@@all` class variable.
  def initialize(student_hash)
    student_hash.each do |key, value|
      self.send("#{key}=", value)
    end
    @@all << self
  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end

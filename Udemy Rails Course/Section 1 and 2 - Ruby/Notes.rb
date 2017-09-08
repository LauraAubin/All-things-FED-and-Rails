# -------------------------------------------
# SECTION 2
# Ruby programming language

# Ruby style guide: https://github.com/bbatsov/ruby-style-guide
# -------------------------------------------

# print
puts "Hello World"

# string
hello = "Hello World"
puts hello

# method
def hello
  puts "Hello World"
end
hello

def hello(argument)
  puts argument
end

# break an if statement
a = gets.chomp
if a != "continue"
  break
end

# -------------------------------------------
# NUMBERS & STRINGS
# -------------------------------------------

# Console: irb
# Separate new lines in irb with ';' so you can write on one line.
item.class # prints item type
item.methods # prints item methods
nil.nil? # true
# Variables point to assignment of variables
"#{var}" # String interpolation
# Enter quote \, escape quote /
"".empty? # true
gets.chomp # Get string input from user
var.reverse # reverses a string
var.count # count how many characters in the string
20/3.to_f # convert int to float
5.to_s # convert object to string
20 % 3 # = 2, mod, remainder
22.odd? # false
rand(10) # random number between 0 and 10, exclusive (without 10)
"string: #{number * 10}" # Avoid adding a string to an int like this
a.capitalize # capitalize string
"string".methods # displays methods available for the string object


# -------------------------------------------
# ARRAYS
# -------------------------------------------

a.include?(something) # Checks if something is in the array
a.shuffle # shuffle array
a = (0..99).to_a.shuffle! # create array, of random numbers, from 0 -> 100
a << 25 # add 25 to the end of the array
a.push(25) # add to end of array
a.unshift(25) # add 25 to the beginning of the array
a.pop # remove last element in array
a.unique # removes duplicates
! # save
a.unique! # removes duplicates and saves array
a.each {[i] puts i} # loop, iterate whole array, print each, returns whole array at end

    a.each do |x|
      puts ": #{{x}}"
    end

    # or

    a.each { |x| puts ": #{x}" }

a.select { |x| x.odd? } # loops through the array, selects only x that are odd
a.each { |x| print number if x.odd? } # another way to get only odd numbers

a = ["1", "2", "3"] # Array of strings
a.join # "123"
a.join(' ') #=> "1 2 3"
a.join('-') #=> "1-2-3"

some_array = [1,2,3,4,5,6]
some_array.select(&:even?)
some_array.select{|number| number.even?} # Same as ^

# -------------------------------------------
# HASHES
# -------------------------------------------

# keys and values
hash = {'a' => '1', 'b' => '2'} # keys (a, b) & values (1, 2)

hash = {a: 1, b: 2, c: 3} #=> {:a=>1, :b=>2, :c=>3}
hash[:c] #=> 3
hash[:d] = 7 # adds to the hash, {:a=>1, :b=>2, :c=>3, :d=>7}
hash.delete(:b) # removes b entry from key, {:a=>1, :c=>3, :d=>7}
hash.each { |k, v| puts v } #=> 1, 3, 7
hash.each { |k, v| hash.delete(k) if v > 3 } #=> 1, 3
hash.select { |k, v| v.odd? } #=> 1, 3, 7
a.include?(b) # check if b exists in a

def get_value_with_key(hash, key)
  hash[key]
end


# -------------------------------------------
# OBJECT ORIENTED PROGRAMMING
# -------------------------------------------

User.ancestors # inheritance, all super classes of user
@name # instance variable, exists with object


    module Modulable # naming convention ends with "able"
      def module_method(object)
      end
    end

    class User
      def initialize(name)
        @name = name
      end

      # each object can use instance methods in the class

      # getter method
      def get_name
        @name
      end

      # setter method
      def set_name=(name)
        @name = name
      end
    end

user = User.new("Name")
user.get_name #=> Name
user.set_name = "Name" #=> Name

    # or let Ruby setup the getters and setters:
    class User
      include Modulable
      attr_acessor :name

      def initialize(name)
        @name = name
      end

      def self.class_method # Define a class method, does not need an object to run
      end
    end

user = User.new("Name")
user.name #=> Name
user.name = "Name" #=> Name
user.class_method # calls method
user.module_method # accessible from user because of the "include"


# -------------------------------------------
# SPLAT OPERATOR *
# -------------------------------------------

  # DEFINE SPLAT IN A METHOD

  # Gather up remaining arguments
  def say(what, *thing)
    thing.each{ |x| puts "#{x}: #{what}" }
  end
  say "Hello", "1", "2", "3"
  # 1: Hello
  # 2: Hello
  # 3: Hello

  # Using a hash and a splat at the beginning of the argument list
  # Needs a hash passed in at the end
  def method(*args, opts)
    puts "arguments: #{args} & options: #{opts}"
  end
  method 1, 2, 3, :a=>4 #=> arguments: [1, 2, 3] & options: {:a=>4}

  def method(a, b, *)
    puts "#{a} and #{b}"
  end
  method 1, 2, 3 #=> 1 and 2

  # CALLING METHODS
  array = ["1", "2", "3"]
  say *array
  # 1
  # 2
  # 3

  def method(a, b)
    a + b
  end
  pair = [3, 7]
  method *pair #=> 10

  # ARRAY DESTRUCTURING
  first, *list = [1,2,3,4] # first = 1, list = [2,3,4]
  *list, last = [1,2,3,4] # list = [1,2,3], last = 4
  first, *center, last = [1,2,3,4] # first = 1, center = [2,3], last = 4

  _, *unquoted, _ = '"quoted"'.split(//)
  unquoted.join # quoted


  # ARRAY COERCION
  "hello".to_a #=> cannot convert string to array
  a = *"hello" #=> ["hello"]
  a = *(1..3) #=> [1, 2, 3]
  a = *[1,2,3] #=> [1, 2, 3]


# -------------------------------------------
# JSON
# -------------------------------------------

# Inside a file named 'user_permissions_template.json'
{"accounts": "read",
 "policies": "write",
 "users": "write"}

# Inside 'user.rb'
require 'json' # to access and read the json file

class User
  attr_accessor :name, :permissions

  def initialize(*args) # '*' is a splat operator, taking in arguments and creates array
    @name = args[0] # Order in which passed in
    @permissions = User.permissions_from_template
  end

  def self.permissions_from_template
    file = File.read 'user_permissions_template.json' # read file
    JSON.load(file, nil, symbolize_names: true) # create JSON object of what is brought in
  end

  def save_method
    var = { name: @name, permissions: @permissions }.to_json # hash, converted to json object
    open('users.json', 'a') do |file| # create new file and save, 'a' = append
      file.puts var
    end
  end
end

# Inside 'runner.rb'
require 'pp' # pretty print, styles output
require_relative 'user' # User 'user.rb' file

user = User.new 'user_name'
pp user
user.save_method
# Will create a new file, 'user.json'
# Inside file:
  # {"name":"user_name", "permissions":{{"accounts": "read","policies": "write","users": "write"}}}

# If 'save_method' is called again, the file already exists, so another user is added to the file.

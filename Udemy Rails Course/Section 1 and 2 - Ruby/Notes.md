# SECTION 2
## Ruby programming language

[Ruby style guide](https://github.com/bbatsov/ruby-style-guide)

<hr>

Print: `puts "Hello World"`

String: 
- `hello = "Hello World"`
- `puts hello`

Method:

```
def hello
  puts "Hello World"
end
hello
```

```
def hello(argument)
  puts argument
end
```

Break an if statement:

```
a = gets.chomp
if a != "continue"
  break
end
```

<hr>

## Numbers and Strings:

- Console: `irb`
- Separate new lines in irb with ';' so you can write on one line.
- `item.class` _Prints item type._
- `item.methods` _Prints item methods._
- `nil.nil?` _True._
- Variables point to assignment of variables.
- `"#{var}"` _String interpolation._
- Enter quote `\`, escape quote `/`.
- `"".empty?` _True._
- `gets.chomp` _Get string input from user._
- `var.reverse` _Reverses a string._
- `var.count` _Count how many characters in the string._
- `20/3.to_f` _Convert int to float._
- `5.to_s` _Convert object to string._
- `20 % 3 # = 2` _Mod = remainder._
- `22.odd?` _False._
- `rand(10)` _Random number between 0 and 10, exclusive (without 10)._
- `"string: #{number * 10}"` _Avoid adding a string to an int like this._
- `a.capitalize` _Capitalize string._
- `"string".methods` _Displays methods available for the string object._

<hr>

## Arrays:

- `a.include?(something)` _Checks if something is in the array._
- `a.shuffle` _Shuffle array._
- `a = (0..99).to_a.shuffle!` _Create array of random numbers, from 0 -> 100._
- `a << 25` _Add 25 to the end of the array._
- `a.push(25)` _Add to end of array._
- `a.unshift(25)` _Add 25 to the beginning of the array._
- `a.pop` _Remove last element in array._
- `a.unique` _Removes duplicates._
- `!` _Save._
- `a.unique!` _Removes duplicates and saves array._
- `a.each {[i] puts i}` _Loop, iterate whole array, print each, returns whole array at end._

```
a.each do |x|
   puts ": #{{x}}"
end
```

or

```
a.each { |x| puts ": #{x}" }
```

<br>

- `a.select { |x| x.odd? }` _Loops through the array, selects only x that are odd._
- `a.each { |x| print number if x.odd? }` _Another way to get only odd numbers._

<br>

- `a = ["1", "2", "3"]` _Array of strings._
- `a.join` _"123"_
- `a.join(' ')` _"1 2 3"_
- `a.join('-')` _"1-2-3"_

<br>

`some_array = [1,2,3,4,5,6]`

`some_array.select(&:even?)`

or 

`some_array.select{|number| number.even?}`

<hr>

## Hashes:

- `hash = {'a' => '1', 'b' => '2'}` _Keys (a, b) & values (1, 2)._

- `hash = {a: 1, b: 2, c: 3}` _{:a=>1, :b=>2, :c=>3}_
- `hash[:c]` _3_
- `hash[:d] = 7` _Adds to the hash, {:a=>1, :b=>2, :c=>3, :d=>7}._
- `hash.delete(:b)` _Removes b entry from key, {:a=>1, :c=>3, :d=>7}._
- `hash.each { |k, v| puts v }` _1, 3, 7._
- `hash.each { |k, v| hash.delete(k) if v > 3 }` _1, 3._
- `hash.select { |k, v| v.odd? }` _1, 3, 7._
- `a.include?(b)` _Check if b exists in a._

<br>

```
def get_value_with_key(hash, key)
    hash[key]
end
```

<hr>

## Object Oriented Programming:

- `User.ancestors` _Inheritance, all super classes of user._
- `@name` _Instance variable, exists with object._
- `module Modulable` _Naming convention ends with "able"._
    
<br>

```
def module_method(object)
    end
end
```

<br>

_Each object can use instance methods in the class._

```
class User

    def initialize(name)
         @name = name
    end

    _Getter method
    def get_name
        @name
    end

    _Setter method
    def set_name=(name)
        @name = name
    end
end
```

```
user = User.new("Name")
user.get_name
```
Returns `Name`.

```
user.set_name = "Name"
```
Returns `Name`.

<br>

**Or let Ruby setup the getters and setters:**

```
class User
   include Modulable
   attr_acessor :name

   def initialize(name)
      @name = name
   end

   def self.class_method
   end
end
```

`def self.class_method` defines a class method, does not need an object to run.

<br>

```
user = User.new("Name")
user.name
```
Returns `Name`.

`user.name` = "Name"
`user.class_method` _calls method._
`user.module_method` _accessible from user because of the "include"._

<hr>

## SPLAT OPERATOR *

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

#variables
my_num = 23
my_boolean = true
my_string = "Ruby on Rails"

puts my_num
puts my_boolean
puts my_string

#Math
puts 1+2
puts 4-2

#Put and Print
puts "What's up?"
print "Oxnard Montalvo"

print "Oxnard Montalvo"
puts "What's up?"

puts "I love expresso".length
puts "Eric".reverse
puts "eric".upcase
puts "Eric".downcase

#Multi-line comments
=begin
I'm a comment!
I don't need any # symbols.
=end

name = "Fatima"
puts name.downcase.reverse.upcase

#methods
puts 6.even?
puts 6.odd?

#convert integer to float
puts 3.to_f

#convert float to integer
puts 7.5.to_i


#plenty of ways to concatenate the string
puts "welcome " + "to " + "ROR"
puts "welcome " << "to " << "ROR"
puts "welcome ".concat("to ").concat( "ROR")

#CLASSIC RUby
#substring

puts "hello"[1] #givr substring
puts "hello"[0, 4]   #=> "hell"
puts "hello"[0..1]   #=> "hell"

#TO Take input from users
# print "what's your first name?'"
# first_name = gets.chomp
# print "what's your last name?'"
# last_name = gets.chomp
# print "what's your city name?'"
# city = gets.chomp
# print "what's your state name?'"
# state = gets.chomp

#print variable within string
monkey = "Curious George"
puts "I took #{monkey} to the zoo"

#captalize! and upcase! gives modifying string
print "This is my question?"
first_name = "fatima"
puts first_name
last_name = "latif".capitalize!
city = "gujranwala".capitalize!
state = "pakistan".upcase!
puts first_name
puts last_name
puts city
puts state

puts "hello".include?("lo")
puts "hello".include?("f")
puts "".empty?
puts "hello".length
puts "hello".reverse
puts "Hello World".split

#Conditions
x= 10
y= 35
if x < y
 puts "x is less than y!"
elsif x>y
 puts "x is greater than y"
else 
 puts"x equals y!"
end



#Hashes datatype in ruby. It lookes like objects in pyhon or js
my_hash = {
    "name" => "ALice",
    "age" => 15,
    "city" => "New York"
}
#OR
my_hash = {
    name: "ALice",
    age: 15,
    city: "New York"
}
puts my_hash
puts "My name is", my_hash[:name]

#Add new keys in hash
my_hash[:occupation] = "Engineer"
puts my_hash

#Hash Methods
#keys: return an array of all keys in the hash
puts my_hash.keys
puts my_hash.values

#delete(key): Removes a key-value pair by key.
puts my_hash.delete(:age)
puts my_hash

#Combine 2 hashes in one
my_hash1 = {
    country: "America"
}
 merged_hash =  my_hash.merge(my_hash1)
 puts merged_hash

 #iterating over hashes using each method
 my_hash.each do | key, value |
    puts "#{key}: #{value}"
 end

 #Arrays
 my_array = [1,2,3, "hello", true, [4,5,6]]
 puts my_array
 #access array elements using indexes
 puts my_array[3]

 #negative indexes starts from end
 puts my_array[-2]

 #add element array to specific index
 puts my_array[3] = "Orange"
 puts my_array

#Adding and Removing Elements from Array
my_array1 = [1,2,3]
my_array1.push(4)
my_array1<<(5)
my_array1.unshift(0)  #unshift add element to the begining of the array
my_array1.shift   #shift remove element to the begining of the array
puts "my_array1 is", my_array1

my_array2 = [0,1,2,4,5]
my_array2.shift
puts "array 2 is",my_array2

#Remove elements at the end of the array
my_array2.pop
puts "Pop the elements from the array", my_array2

#Iterate the array using each method

fruits = ["apple", "banana", "mango", "orange"]

 fruits.each do | element |
    puts  "fruits", element
 end

 #Common Array Methods
  puts "fruits array lenght", fruits.length
  puts "fruits array first element", fruits.first  
  puts "fruits array last element", fruits.last
  puts "fruits reverse array", fruits.reverse

  #sort the array
  array = [44,8,9,67,100]
  puts "Sort the Array", array.sort

  #Combine array elements into string

  array_element = ["a", "b", "c"]
  puts "combine array elements #{array_element.join("-")}"

  #Loops
  #WHILE LOOP
 i=0
 while i< 5
    puts "while loop #{i}"
    i = i+1
 end

 #Until loop
 #It executes as long as the given condition os false
 i=0
 until i==5
 puts "until loop #{i}"
 i += 1
end  

#Methods
def greet(name)
    puts "Hello, #{name}"
end

greet("Fatima")

#Methods Arguments

def sum (a,b)
    a+b
end
puts sum(1,3)

#optional argument example
def optional_argument(name = "Ruby")
    puts "#{name}"
end
optional_argument()

#keyword argument example its more readable way
def order (item:, quantity:)
 puts "order of #{quantity} #{item}"
end
order(item: "apples", quantity: 5)

#yield to block example

def square_each_element(num)
    puts "First execution"
    num.each do | element |
        yield(element)
    end
    puts "remaining methods functionality"
end

num = [2,3,4,5,6]
square_each_element(num) {
    |n| puts "square of number #{n * n}"
}

square_each_element (num) {
    | n | puts "sum of number #{ n + 5}"
}


#enumerable map methods
 numbers = [1,2,3,4]
 square = numbers.map { |n| n * n  }
 puts square

 #select method
 number = [1,2,3,4,5,6,7]
 even_number  = number.select { |n| n.even? } #Filter out the even number on the base of condition
 puts "even number", even_number



 #OOP concepts in ruby
class Vehicle
    def initialize (make , model)
        @make = make
        @model = model
        @running = false
    end

    def start_engine
        @running = true
        puts "The #{@make} #{@model} engine running now!"
    end

    def stop_engine
        @running = false
        puts "The #{@make} #{@model} engine running stop!"
    end

    def engine_status
        if @running
            puts "car engine is running"
        else
            puts "car engine is off"
        end
    end

    private    #apply encapsulation
    def seceret_code
        "62173289"
    end

end

class Car < Vehicle    #Inheritance

    def honk_horn
        puts "Honk! Horn"
    end

end
my_car = Car.new("Toyota", "Corolla")
my_car.engine_status
my_car.start_engine
my_car.stop_engine
# my_car.seceret_code
my_car.honk_horn

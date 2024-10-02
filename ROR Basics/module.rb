module Astech
    A = 10

    def portal
        puts "Welcome to the Astech Portal"
    end

    def tutorial
        puts "Welcome to the Astech tutorial"
    end
end

module Astech2
    A = 20

    def portall
        puts "Welcome to the Astech Portall"
    end

    def tutoriall
        puts "Welcome to the Astech tutoriall"
    end

    def stack
        puts "Welcome to the Astech stack"
    end
end
 #when we access contant make instance method
class Sample
    include Astech
    include Astech2   #include means all module methods accessed by instance of class (instance methods)

    def show_contant
        puts "Constant A of module Astech #{Astech::A}"
         puts "Constant A of module Astech2 #{Astech2::A}"
    end
end

s = Sample.new
s.portal
s.tutorial
s.portall
s.tutoriall
s.stack
s.show_contant


# Mixins include example
module Greetings

    def say_hellow
        puts "Hello!"
    end

    def walk
        puts "I am walking!"
    end
end

class Person
    include Greetings
end

person = Person.new
person.say_hellow 
person.walk

# Mixins extend example
module Speak

    def speak
        puts "I can speak"
    end

end

class Animal
    extend Speak
end

Animal.speak


#module example with a namespace
module Geometry

    class Circle   
        
        def initialize (radius)
            @radius = radius
        end

        def area
          puts "Circle area is #{3.14 * @radius ** 2}"
        end

    end

    class Rectangle

        def initialize (lenght, width)
            @lenght = lenght
            @width = width
        end

       def area
        puts "Rectangle area is #{ @lenght * @width }"
       end
    end
end

circle = Geometry::Circle.new(5)
circle.area

rectangle = Geometry::Rectangle.new(4,8)
rectangle.area

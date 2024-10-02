#TASK PRACTICE
#Reverse the string without using built-in methods

my_string = "Pakistan"
reverse_string = ""

split_string = my_string.split('')
puts "split string #{split_string}"

split_string.each do |element |
    puts "elements", element   #take each element
    reverse_string = element + reverse_string
    puts reverse_string
end

#Write a program that takes an array of numbers and returns a new array
#containing only the even numbers.

def even_number(arr)
even_number = []
arr.each do | i |
    if i%2 == 0
        even_number<<i
    end
end
 even_number
end

arr = [2,6,88,100,44,3,99,5]
result = even_number(arr)
puts "even number array #{result}"

#Write a method that checks if a string is a palindrome.
 
def is_palindrom_string(str)
 length = str.length
  puts length
  i=0
  while i < length/2
    if str[i] != str[length-i-1]
        return false
    end
    i = i+1
  end
  return true
end

str = "madam"
result = is_palindrom_string(str)
puts "string is plindrom or not #{result}"

#Task related to yield to block
#Create a method that takes a block and applies it to each element of anrray.

def odd_number (num)
    num.each do | element |
        yield(element) if element.odd?
    end
end

num = [1,2,3,4,5,6,7,8,9]
odd_number(num) do | n |
    puts "odd numbers are #{n}"
end

#Write a method using Enumerable#reduce to find the sum of an array ofnumbers.

def sum_of_array (nums)
    sum = nums.reduce(0) do | acc, element |
        acc + element
    end
     puts "sum of array #{sum}"
end
 nums = [2,5,6,10,30]
 sum_of_array(nums)


#OOP tasks
#Create a Book class with attributes like title, author, and pages.
#Write methods to display book details.
# Create a Library class that can store multiple Book objects and has
# methods to add and list books.


#create module
class BookAlreadyBorrowError < StandardError; end
module Borrowable

    def borrow_books
        if @borrowed

            #raise the custom exception error
            raise  BookAlreadyBorrowError, "This book is already borrowed"
        else 
            @borrowed = true
            puts "You have successfully borrowed the book"
        end
    end

    def return_books
        if @borrowed
            @borrowed = false
             puts "You have successfully returned the book"
       else 
             puts "This book was not borrowed"
       end
    end
end

class Book
include Borrowable

    def initialize (title, author, pages)
        @title = title
        @author = author
        @pages = pages
        @borrowed = false
    end

    def book_details
        puts "The #{@title} is a book of #{author} with #{pages} pages"
        puts @borrowed ? "Status: Borrowed" : "Status: Available"
    end

    #make public methods allow access anywhere in class

    def author
        @author
    end

    private  #page will be private
    def pages
        @pages
    end
end


class Library
    def initialize
        @books = []
    end

    def add_books(book)
        @books << book
    end

    def book_list
        @books.each do | book |
            book.book_details
        end
    end
end

my_library = Library.new
book1 = Book.new("Atomic Habits", "James Clear", 320)
book2 = Book.new("1984", "George Orwell", 328)
book3 = Book.new("Namal", "Nimra Ahmed", 780)
my_library.add_books(book1)
my_library.add_books(book2)
my_library.add_books(book3)
my_library.book_list

#Try to add custom exception error
begin
    book1.borrow_books
    book1.borrow_books   #Give exception if we borrow again
rescue BookAlreadyBorrowError => e
    puts "#{e.message}"
end


book1.return_books
book1.book_details
book1.return_books



# book1.pages  not accessble because it private

class DigitalBook < Book   #not need to add module beacuse it already inherited

    def initialize(title, author, pages, file_name)
        super(title, author, pages)
        @file_name = file_name
    end
    
    def book_details
        super
        display_file_format
    end

    def display_file_format
        file_extension = File.extname(@file_name) #extname method always takes string arguments file path or file name
        puts file_extension
        puts "File extension  is #{file_extension.empty? ? "unknown" : file_extension }"
    end
end

my_digital_book = DigitalBook.new("Peer-e-Kamil", "Umera Ahmed", 1300, "novel.pdf")
my_digital_book.book_details
my_digital_book.borrow_books
my_digital_book.return_books

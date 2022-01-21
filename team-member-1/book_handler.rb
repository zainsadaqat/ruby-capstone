require_relative 'book'
require 'json'

class BookHandler
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def create_book
    puts "Please fill out the following values\n"
    puts "Enter publisher: "
    publisher = gets.chomp
    puts "Enter published date: "
    published_date = gets.chomp
    puts "Enter cover state: "
    cover_state = gets.chomp
    puts "Want to move to archive [y/n]"
    archived = gets.chomp
    book = Book.new(publisher, published_date, cover_state, archived)
    if %[y].include?(archived.downcase)
      book.move_to_archive
    else
      puts "Can not move to archive"
    end
  end
end
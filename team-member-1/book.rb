require_relative 'item'
require 'json'

class Book < Item
  attr_accessor :publisher, :publish_date, :cover_state, :archived

  @@all_books = []

  def initialize(publisher, publish_date, cover_state, archived)
    super(publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
    @@all_books << self
  end

  def can_be_archived?
    super || @cover_state.eql("bad") ? true : false
  end

  def self.all_book
    @@all_books
  end

  def to_s
    "\nPublisher: #{self.publisher}, Cover State: #{self.cover_state}\n"
  end

  def to_json(_options = {})
    {
      'publisher' => @publisher,
      'cover_state' => @cover_state
    }
  end
end
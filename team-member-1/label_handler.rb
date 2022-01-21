require_relative 'label'
require 'json'

class LabelHandler
  attr_accessor :labels

  def initialize
    @labels = []
  end

  def save
    File.write('label.json', JSON.generate(@labels.map(&:to_json))) unless @labels.empty?
  end

  def load
    if File.exist?('label.json')
      JSON.parse(File.read('label.json')).map do |data|
        @labels.push(Label.new(data['title'], data['color']))
      end
    else
      []
    end
  end

  def add_label(label)
    @labels.push(label)
  end

  def create_label
    puts "Please fill out the form\n"
    puts "Enter Title: "
    title = gets.chomp
    puts "Enter color: "
    color = gets.chomp
    label = Label.new(title, color)
    puts "Label created successfully!"
  end
end
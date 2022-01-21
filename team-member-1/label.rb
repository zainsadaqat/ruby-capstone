class Label < Item
  attr_accessor :title, :color
  attr_reader :id

  def initialize(title, color)
    @id = Random.rand(1...10000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.add_label(self)
    @items.push(self) unless @items.include?(item)
    "Item added successfully"
  end

  def to_s
    "Title: #{self.title}, Color: #{self.color}"
  end

  def to_json
    {
      'title' => @title,
      'color' => @color
    }
  end

end
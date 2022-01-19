class Item
  attr_reader id
  attr_accessor genre, author, source, label, publish_date

  def initialize(publish_date:, archived: false)
    @id = Random.rand(1..1_000_000)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

end
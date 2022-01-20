require_relative '../team-member-1/label'

describe Label do
  label = Label.new("Book1", "red")
  item = Item.new("2020-02-03", false)
  context "Testing label" do
    it "If title is Book1" do
      expect(label.add_item(item)).to be("Item added successfully")
    end
  end
end
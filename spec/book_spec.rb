require_relative '../team-member-1/book'

describe Book do
  book = Book.new("John Doe", "2020-02-03", "bad", false)
  context "Testing Book when cover state is bad" do
    it "If can_be_archived returns true" do
      expect(book.can_be_archived?()).to should_be(true)
    end
  end
end


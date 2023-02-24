require './lib/book'
require './lib/author'

RSpec.describe Author do

  it '#initialize' do
  charlotte_bronte = Author.new({first_name: "Charlotte",
                                 last_name: "Bronte"})

  expect(charlotte_bronte).to be_instance_of(Author)                               
  end

  it '#name method provides full name' do
  charlotte_bronte = Author.new({first_name: "Charlotte",
                                 last_name: "Bronte"})

  expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it '#books starts as empty array' do
  charlotte_bronte = Author.new({first_name: "Charlotte",
                                 last_name: "Bronte"})
  expect(charlotte_bronte.books).to eq([])
  end

  it '#author can write books' do
  charlotte_bronte = Author.new({first_name: "Charlotte",
                                 last_name: "Bronte"})
  # jane_eyre = Book.new({author_first_name: "Charlotte",
  #                       author_last_name: "Bronte",
  #                       title: "Jane Eyre",
  #                       publication_date: "October 16, 1847"})
  expect(charlotte_bronte.write("Jane Eyre", "October 16, 1847")).to be_instance_of(Book)
 
  end
end
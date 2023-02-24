require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do

  it '#initialize' do
  library = Library.new("Denver Library")

  expect(library).to be_instance_of(Library)
  expect(library.books).to eq([])
  expect(library.authors).to eq([])
  end

  it '#add authors method stores authors and books theyve written' do
  library = Library.new("Denver Library")
  charlotte_bronte = Author.new({first_name: "Charlotte",
                                 last_name: "Bronte"})
  jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  villette = charlotte_bronte.write("Villette", "1853")
  library.add_author(charlotte_bronte)

  expect(library.books).to eq([jane_eyre, villette])
  expect(library.authors).to eq([charlotte_bronte])
  end
end
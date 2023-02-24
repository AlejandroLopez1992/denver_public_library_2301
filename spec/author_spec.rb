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
end
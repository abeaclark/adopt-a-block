require 'csv'
require 'faker'


## Create Blocks
array_of_block_numbers = []

CSV.foreach('adopt_a_block_numbers.csv') do |row|
  array_of_block_numbers << row[0].to_s
end

array_of_block_numbers.each do |block_number|
  block = Block.create(block_num: block_number, name: block_number)

  # Create businesses
  1.times do
    business = Business.create({
                              name: Faker::Name.name,
                              website: Faker::Internet.url
                              })
  block.businesses << business
  end

  # Create Users
  3.times do
    user = User.create({
                      full_name: Faker::Name.name,
                      avatar_url: Faker::Avatar.image
                      })
  block.users << user
  end

  # Create Events
  3.times do
    event = Event.create({
                        title: Faker::Hipster.sentence,
                        body: Faker::Hipster.sentence(20),
                        })
    block.events << event
  end

  # Create Issues
  3.times do
    issue = Issue.create({
                        title: Faker::Hipster.sentence,
                        body: Faker::Hipster.sentence(20),
                        status: ['open', 'closed'].sample
                        })
    block.issues << issue
  end

end



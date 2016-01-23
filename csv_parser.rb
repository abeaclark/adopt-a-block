require 'csv'

array_of_block_numbers = []

CSV.foreach("../adopt_a_block_numbers.csv") do |row|
  array_of_block_numbers << row[0].to_s
end

array_of_block_numbers.each do |block_number|
  Block.create(block_num: block_number, name: 'Not yet named')
end

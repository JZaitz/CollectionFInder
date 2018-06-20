require 'rspec'

def find_element(array, element)

  array.each do |x|
     #return x if x[1] == element     #let's find another way to do it as well
     return x if x.include?('Aaron Judge')

  end

end

baseball_players = [
  [23, 'Yoenis Cespedes'],
  [34, 'Gary Sanchez'],
  [40, 'Aaron Judge'],
  [5, 'Lucas Duda']
]

puts find_element(baseball_players, 'Aaron Judge')




describe 'Collection Finder' do

      it "will return an array from a nested array if the second element equals the queried element" do
        baseball_players = [
          [23, 'Yoenis Cespedes'],
          [34, 'Gary Sanchez'],
          [40, 'Aaron Judge'],
          [5, 'Lucas Duda']
        ]

         expect(find_element(baseball_players, 'Gary Sanchez')).to eq([34, 'Gary Sanchez'])
      end

end

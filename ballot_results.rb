#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

# each row represets vote results for a given precient
# Each item in the row represents the votes that Mary Sue, Sally Jane, and Billy Joe received chronologically.

precinct1 = vote_results[0].inject(0) {|sum,num| sum += num}
puts "Total voters in Precinct 1: #{precinct1}"
#
# finds the max votes in precient 4
max_votes = vote_results[3].max
# Applys the candidates index(that has the max votes) with the max votes variable
# precinct4 = -1
# vote_results[3].each do |num,sum|
#   if num > winner
#     winner = num
#   end
# end
# both do give the same results

candidate_index = vote_results[3].index(max_votes)
puts "#{candidates[candidate_index]} won Precinct 4"

mary_sue = 0
sally_jane = 0
billy_joe = 0

vote_results.length.times do |total|
  mary_sue += vote_results[total][0]
  sally_jane += vote_results[total][1]
  billy_joe += vote_results[total][2]
end

puts "\nMary Sue got #{mary_sue} votes"
puts "\nSalle Jane got #{sally_jane} votes"
puts "\nBilly Joe got #{billy_joe}"

total = mary_sue + sally_jane + billy_joe
puts "\nThere are #{total} total votes"

puts

if mary_sue > sally_jane && mary_sue > billy_joe
  puts "Mary Sue got the most votes #{mary_sue} "
elsif sally_jane > mary_sue && sally_jane > billy_joe
    puts "Sally Jane got the most votes #{sally_jane}"
  else
      puts "Billy Joe got the most votes #{billy_joe} "
end

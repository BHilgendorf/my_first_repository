#sorts alphabetically, regarless of capitalization

def dictionary_sort(arr)
  rec_sort(arr,[])
end

def rec_sort(unsorted,sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do|test|
    if test.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test
    else
       still_unsorted.push test
    end
  end

  sorted.push smallest
  rec_sort(still_unsorted,sorted)
end

puts "Give me a list of words and I'll sort it alphabetically."
word = gets
list = []
while word != "\n" do
  list << word.chomp
  word = gets
end


puts dictionary_sort(list)

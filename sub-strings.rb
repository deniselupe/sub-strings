def substrings(message, array_of_sub_strings)
  uniq_count = array_of_sub_strings.reduce({}) do |obj, val|
    obj[val] = message.downcase.scan(val).length
    obj
  end
  
  # Filter out the Objects with Value of 0
  uniq_count = uniq_count.select { |obj, val| val > 0 }
  puts uniq_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How\'s it going?", dictionary)

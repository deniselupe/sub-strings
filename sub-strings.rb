=begin
This code is written assuming that both argument values
will be of the string data type.

The return object will only show if every element listed in the 
array_of_sub_strings is included at least once in the string provided.

This does not currently count the number of times the substring 
is included within the string provided.
=end

def substrings(message, array_of_sub_strings)
  uniq_count = array_of_sub_strings.reduce({}) do |obj, val|
    if !obj[val]
      obj[val] = 0
    end
    
    if message.downcase.include?(val)
      obj[val] += 1
    end
    
    obj
  end
  
  puts uniq_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How\'s it going?", dictionary)
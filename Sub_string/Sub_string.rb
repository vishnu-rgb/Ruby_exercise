dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def Substrings(string,dictionary)
    match={}
    
    dictionary.each do |i|
       if string.downcase.include?(i)
        match[i] =string.downcase.scan(/(?=#{i})/).count #.scan for check any "element" for string and count gives the no. of times comes in string #=> count
       end
    end
    match
end

puts Substrings("below",dictionary)
puts Substrings("Howdy partner, sit down! How's it going?", dictionary)
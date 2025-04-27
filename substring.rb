#Take string and array of strings (dictionary)
#return hash with founded string (key) and ammount of times it was found (value). Case insensitive.
#
#Pseudocode
#substring(str, dictionary)
#Clear string from punctuaction and symbols (is this neccessary?), decapitalize.
#Convert string into array of strings (m.b. get rid of punctuation in this step)
#Compare every string in dictionary with every array string (method for comparing, if exist, or letter by letter comparison)
#IF array_string INCLUDE dictionary_string
  #create/find existed key in result hash
  #raise counter by 1
#Return hash.

def substring(str, dictionary)
  result_hash = Hash.new(0)
  working_array = str.downcase.split(" ")
  p working_array
  dictionary.each do |dic_str|
    working_array.each do |str_to_check|
      if str_to_check.include?(dic_str.downcase)
        result_hash[dic_str] += 1
      end
    end
  end
  p result_hash
  return result_hash
end
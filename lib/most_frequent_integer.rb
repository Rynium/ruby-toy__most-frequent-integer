# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    empty = {}
    max = {}
    num = nil
    
    i = 0 
    while i < arr.length
        if empty.has_key?(arr[i]) == true
            empty[arr[i]] += 1
        else
            empty[arr[i]] = 1
        end
        i+=1
    end
    
    empty.each do |key,value|
        if value == empty.values.max
            max[key] = value
            num = key
        end
    end
    
    max.length > 1 ? nil : num
    
end

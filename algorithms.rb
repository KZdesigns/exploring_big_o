require 'byebug'

#Phase I O(n^2)
#O(1) constant space
def my_min(list)

    list.each_with_index do |l1, idx1|
        # debugger
        smallest = true

        list.each_with_index do |l2, idx2|
            next if idx1 == idx2

            smallest = false if l2 < l1
        end

        return l1 if smallest
    end

end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# O(n)
# 0(1)
def my_list2(list)
    min = list.first

   list.each do |item|
        if min > item
            min = item
        end
   end

    min   
end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_list2(list)  # =>  -5


# O(n^3)
def largest_contiguous_subsum(list)
    subsets = []
    max_array = []


    (0...list.length).each do |start_idx|
        (start_idx...list.length).each do |end_idx|
            subsets << list[start_idx..end_idx]
        end
    end
  
    subsets.each do |sub_array|
        max_array << sub_array.sum
    end

    max_array.sort[-1]
end


# list = [5, 3, -7]
# p largest_contiguous_subsum1(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

def largest_contiguous_subsum1(list)



end

list = [5, 3, -7]
p largest_contiguous_subsum1(list) # => 8


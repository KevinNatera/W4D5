
def my_min(array)
    min_num = array.first
    array.each_with_index do |el1, idx1|
        array.each_with_index do |el2, idx2|
            if idx2 > idx1 && el2 < el1
                min_num = el2 if el2 < min_num 
            end
        end
    end
    min_num
end

def my_min(array)
    min_num = array.first
    array.each do |ele|
        if ele < min_num
            min_num = ele
        end
    end 
    min_num
end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5
require "byebug"
def largest_contiguous_subsum(array)
    # debugger
    sum = array.first
    # final_array = []
    (0...array.length).each do |i|
        (0...array.length).each do |j|
            cur_sum = array[i..j].sum
            if cur_sum > sum && j>= i
                sum = cur_sum
                # final_array = array[i..j]
            end
        end
    end
    sum
end

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
p list[1..1]
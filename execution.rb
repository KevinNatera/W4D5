require "byebug"
# phase1
# def my_min(array)
#     min_num = array.first
#     array.each_with_index do |el1, idx1|
#         array.each_with_index do |el2, idx2|
#             if idx2 > idx1 && el2 < el1
#                 min_num = el2 if el2 < min_num 
#             end
#         end
#     end
#     min_num
# end

# phase2
# def my_min(array)
#     min_num = array.first
#     array.each do |ele|
#         if ele < min_num
#             min_num = ele
#         end
#     end 
#     min_num
# end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


#phase1
# def largest_contiguous_subsum(array)
#     # debugger
#     sum = array.first
#     # final_array = []
#     (0...array.length).each do |i|
#         (0...array.length).each do |j|
#             cur_sum = array[i..j].sum
#             if cur_sum > sum && j>= i
#                 sum = cur_sum
#                 # final_array = array[i..j]
#             end
#         end
#     end
#     sum
# end

#phase2
# def largest_contiguous_subsum(array)
#     current_sum = 0
#     largest_sum = array.first
    
#     (0...array.length).each do |i|
#         cur_sum = array[i..(i + 1)].sum

#        if cur_sum > largest_sum
#         largest_sum = cur_sum
#         current_sum = cur_sum
#        else 
        
#        end

#     end

#     largest_sum
# end




list = [-5, -1, 5, -3, 6]
p largest_contiguous_subsum(list) # => -1 (from [-1])

list2 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])

list3 = [5, 3, -7]
p largest_contiguous_subsum(list3) # => 8 (from [5,3])
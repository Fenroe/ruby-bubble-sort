# for each item in a list look at it and the item to its right
# if the lower item is not on the left then swap them
# continue like this until all items are sorted

# define a method called bubble_sort that takes an array of numbers
# the method runs while the array is not sorted
# loop through a range equal to the length of the array - 1, starting from 0
# mark is_already_sorted to true
# compare array[i] to array[i + 1]
# if array[i] > array[i + 1] swap the values
# container = array[i]
# array[i] = array[i + 1]
# array[i + 1] = array
# mark is_already_sorted to false as an update happened
# increment i
# if the above operation doesn't happen during a loop then the array was already 
# return the array

# optimisations
# it's called bubble sort because the largest values bubble to the right quickly
# after one full loop, the largest number will be the last item in the array
# the same pattern continues going backwards
# after each loop, reduce the range of the array iteration by one

# other
# inefficient sorting algorithm
# can be used for small data sets or in applications where efficiency is not a concern
# very easy to implement

def bubble_sort(number_array)
    is_already_sorted = false
    range_limit = number_array.length - 1
    while is_already_sorted == false
        is_already_sorted = true
        array_index = 0
        until array_index == range_limit
            if number_array[array_index] > number_array[array_index + 1]
                container = number_array[array_index]
                number_array[array_index] = number_array[array_index + 1]
                number_array[array_index + 1] = container
                is_already_sorted = false
            end
            array_index += 1
        end
        range_limit -= 1
    end
    return number_array
end

array_to_sort = [4,3,78,2,0,2]
if bubble_sort(array_to_sort) == [0,2,2,3,4,78]
    puts("correct")
else
    puts("incorrect")
end
puts(bubble_sort(array_to_sort))
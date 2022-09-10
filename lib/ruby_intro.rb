# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    return arr.sum
  end 
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else 
    descending_arr = arr.sort.reverse
    val = descending_arr.at(0)
    val = val + descending_arr.at(1) unless descending_arr.at(1).nil?  
    return val
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  sorted_arr = arr.sort
  counter_1 = 0
  counter_2 = arr.length - 1
  until counter_1 >= counter_2 || counter_1 == arr.length || counter_2 < 0
    if sorted_arr.at(counter_1) + sorted_arr.at(counter_2) == number
      return true
    elsif sorted_arr.at(counter_1) + sorted_arr.at(counter_2) < number
      counter_1 = counter_1+1
    elsif sorted_arr.at(counter_1) + sorted_arr.at(counter_2) > number
      counter_2 = counter_2-1
    end
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  down_case_string = string.downcase
  return ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z'].include?(down_case_string[0])
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  last_char = string [-1]
  second_last_char = string[-2]
  if string.empty? || string.count('01') != string.size || last_char == '1' || second_last_char == '1'
    return false
  end
  return true
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end

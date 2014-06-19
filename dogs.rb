require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)

  dogs.length

end

def name_lengths(dogs)
  # loop through each dog
  # count how long the name is
  # # return a new array with the length of each name
  #
  # below is called a sandwich code
  # new_dog_name_lengths_array = []
  #
  #   dogs.each do |dog|
  #
  #     new_dog_name_lengths_array.push(dog.length)
  #
  #   end
  # # return the new array with the name length
  # new_dog_name_lengths_array

  dogs.collect do |dog|
    dog.length
  end

end

def reverse_dog_names(dogs)

  dogs.collect do |dog|
    dog.reverse
  end

  # dogs.each{|dog| reverse_dog.push(dog.reverse)}

end

def first_three_dogs_with_each(dogs)

  first_three_dogs = []

  # OR
  # dogs.each_with_index do |dog, index|
  # if index == 3
  #   return first_three_dogs
  #
  #   first_three_dogs.push(dog)
  # end
  # end

  counter = 0

  dogs.each do |dog|

    first_three_dogs.push(dog)
    counter = counter + 1

    if counter == 3

      # or return first_three_dogs without last first_three_dogs
      break

    end

  end

  first_three_dogs

end

def first_three_dogs_without_each(dogs)

  dogs[0..2]

end

def reverse_case_dog_names(dogs)

  dogs.collect do |dog|
    dog.swapcase
  end

  # OR
  # dogs.map {|dog| dog.swapcase}

  # OR
  # dogs.map do |dog|
  # first_letter = dog[0].downcase
  # rest_of_the_letters = dog[1..dog.length].upcase
  #
  # first_letter + rest_of_the_letters
  #
  # end

  # OR
  # inverse_dog_names = []
  #
  # dogs.each do |dog|
  #
  #   new_dog_name = dog.swapcase
  #   inverse_dog_names.push(new_dog_name)
  #
  # end
  #
  # inverse_dog_names

end

def sum_of_all_dog_name_lengths(dogs)

# loop through each dog
# count length of each dog
# add all those length

  sum = 0

  dogs.each do |dog|
    # reassign value of dog length
    sum = sum + dog.length

  end

  sum

end

def dogs_with_long_names(dogs)

  # loop through each dog and count length
  # check if length is >= 4 if yes, true if not, false

  # long_dog_names = []
  #
  # dogs.each do |dog_name|
  #
  #   long_dog_names.push(dog_name.length > 4)
  #
  # end

  dogs.map {|dog_name| dog_name.length > 4}

  # dogs.each do |dog_name|
  #   is_dog_name_long = dog_name.length > 4
  #   long_dog_names.push(is_dog_name_long)
  #
  # end
    # dogs.each do |dog_name|
  #   if dog_name.length > 4
  #     long_dog_names.push(true)
  #
  #   else
  #     long_dog_names.push(false)
  #
  #   end
  # end

  # long_dog_names
#
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80


check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])


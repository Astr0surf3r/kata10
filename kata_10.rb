def dog_years(human_years)
  if human_years == 1
    15
  elsif human_years == 2
    15 + 9
  else
    15 + 9 + 5 * human_years

  end
end

def cat_years(human_years)
  if human_years == 1
    15
  elsif human_years == 2
    15 + 24
  else
    15 + 4 + 4 * human_years

  end
end

puts 'Do you have just received two pets a puppy and a kitty?'
puts 'Enter the pet you want to know the years: a `puppy` or a `kitty` or `both`'

pets = gets.chomp

if pets == 'puppy'
  puts 'Enter the human years of the dog: '
  human_years = gets.chomp.to_i
  puts "The dog years are: #{dog_years(human_years)}"
elsif pets == 'kitty'
  puts 'Enter the human years of the cat: '
  human_years = gets.chomp.to_i
  puts "The cat years are: #{cat_years(human_years)}"
elsif pets == 'both'
  puts 'Enter the human years of the dog: '
  human_years_for_dog = gets.chomp.to_i
  puts "The dog years are: #{dog_years(human_years_for_dog)}"
  puts 'Enter the human years of the cat: '
  human_years_for_cat = gets.chomp.to_i
  puts "The cat years are: #{cat_years(human_years_for_cat)}"
  if human_years_for_dog == human_years_for_cat
    puts [human_years_for_dog, dog_years(human_years_for_dog), cat_years(human_years_for_cat)]
  else
    puts "at the end you will have a dog with #{dog_years(human_years_for_dog)} years and a cat with #{cat_years(human_years_for_cat)} years"
  end
else
  puts 'Invalid option'
end

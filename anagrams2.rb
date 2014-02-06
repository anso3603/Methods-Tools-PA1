elements = %w[cars scar for four creams scream racs]

anagrams = elements.group_by { |word| word.chars.sort }.values
# Group the elements by the hash given by each word sorted by each character and then return that value

print anagrams


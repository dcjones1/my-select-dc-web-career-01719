def my_select(collection)
  if block_given?
    i = 0
    selected_array = []
    while i < collection.length
      selected_array << (collection[i]) if yield(collection[i]) == true
      i += 1
    end
    selected_array
  else
    puts "Hey! No block was given!"
  end
end

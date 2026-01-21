unsorted = [4, 3, 78, 2, 0, 2]

def bubble_sort(unsorted)
  temp = 0

  unsorted.each_with_index do |first, i_first|
    unsorted.each_with_index do |second, i_second|
      break if i_second == unsorted.length - 1
      if unsorted[i_first] < unsorted[i_second]
        temp = unsorted[i_first]
        unsorted[i_first] = second
        unsorted[i_second] = temp
      end
    end
  end

  print unsorted
end

bubble_sort(unsorted)
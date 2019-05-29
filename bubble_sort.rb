def bubble_sort(arr)
  for i in 0..(arr.length - 1)
    for j in (i+1)..(arr.length - 1)
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  puts arr
end

#bubble_sort([4,8,2,8,9,12,1,15])
#bubble_sort([2,4,1,6,8,7,9,11,3])
#bubble_sort([5,6,2,1,7,19,20,11])

def bubble_sort_by
end

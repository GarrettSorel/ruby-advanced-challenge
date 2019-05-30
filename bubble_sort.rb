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

bubble_sort([4,8,2,8,9,12,1,15])
bubble_sort([2,4,1,6,8,7,9,11,3])
#bubble_sort([5,6,2,1,7,19,20,11])
#bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
  swap = true
  while swap == true
    swap = false
      for i in 0..(arr.length - 1)
        for j in (i+1)..(arr.length - 1)
          result = yield(arr[i], arr[j])

          if result > 0
            arr[i], arr[j] = arr[j], arr[i]
          end

        end
      end
  end
  puts arr
end

#bubble_sort_by(["lrrrpersei8", "dasobay", "team", "hello", "moolah", "mrtbox"]) do |left, right|
  #left.length - right.length
#end

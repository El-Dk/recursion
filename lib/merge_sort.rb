# frozen_string_literal: true

def merge_sort(arr, sorted = [])
  if arr.length < 2
    sorted << arr[0]
  elsif arr.length == 2
    if arr[0] < arr[1]
      sorted << arr[0] << arr[1]
    else
      sorted << arr[1] << arr[0]
    end
  else
    arrleft = merge_sort(arr[0..(arr.length / 2)])
    arrright = merge_sort(arr[(arr.length / 2 + 1)..-1])
    i = 0
    j = 0
    while i < arrleft.length || j < arrright.length
      if i < arrleft.length && (j >= arrright.length || arrleft[i] < arrright[j])
        sorted << arrleft[i]
        i += 1
      else
        sorted << arrright[j]
        j += 1
      end
    end
    sorted
  end
end

a = [12, 4, 567, 8, 9, 45, 2, 1, 0]
p merge_sort(a)
b = []
15.times { b << (rand * 60).to_i }
p b
p merge_sort(b)

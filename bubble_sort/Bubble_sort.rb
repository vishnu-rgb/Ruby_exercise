def bubble_sort(array)
    
    temp=0
    array_len=array.size
    return array if array_len <=1
    loop do
        swap=false

            (array_len-1).times do |i|
                
                if array[i] > array[i+1]
                    temp=array[i]
                    array[i]=array[i+1]
                    array[i+1]=temp
                    swap=true
                    

                end
            end
            break if not swap
        end

    array

end
arr=[4,3,78,2,0,2]
puts bubble_sort(arr)
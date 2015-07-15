#require 'rubocop'
class RorTask1


  #Напишите программу, которая для заданного натурального числа num определяет
  #количество вхождений числа 3 в разложение заданного числа на простые сомножители.
  def how_many_threes num
    divider_for_num = []
    inc = 2
    while num != 1
      if (num % inc) == 0
          divider_for_num.push inc
          num /= inc
          inc = 2
      else
        inc += 1
      end
    end
    return divider_for_num.count(3)
    
  end

  #Дан текст. Определите максимальное из имеющихся в нем чисел.
  def max_number_in_text text
    num_arr,char_arr = text.split("").partition{ |e| ("0".."9").include?(e) }
    return num_arr.max 

  end

  #Дан целочисленный массив. Необходимо вывести вначале его элементы с четными 
  #индексами, а затем - с нечетными.
  def even_odd_elements arr
    even = Array.new
    odd = Array.new
    even = arr.select {|i| (i % 2) == 0}
    odd = arr.select {|i| (i % 2) != 0}
    even + odd

  end

  #Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний 
  #элемент. Первый и последний элементы массива не изменять.
  def even_elements_addition arr
    last_value_in_arr = arr[arr.length - 1]
    for i  in 1..arr.length - 2
       if (i % 2) != 0
        arr[i] = arr[i] + last_value_in_arr
       end
    end
    return arr

  end

  #Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел 
  #из данного массива, расположенных между первыми двумя нулями.
  def sum_between_zeros arr
    inc_zero = 0
    i = 0
    sum_between_zeros = 0
    while inc_zero != 2
      if arr[i] == 0
        inc_zero += 1
      end
      if inc_zero == 1
        sum_between_zeros += arr[i]
      end
      i += 1
    end
    return sum_between_zeros
  end

end

ror_task = RorTask1.new

puts "#Напишите программу, которая для заданного натурального числа num определяет
количество вхождений числа 3 в разложение заданного числа на простые сомножители."
puts ror_task.how_many_threes(255)

puts "Дан целочисленный массив. Необходимо вывести вначале его элементы с четными 
индексами, а затем - с нечетными."
puts ror_task.even_odd_elements([11,3,5,6,2,4])

puts "Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний 
элемент. Первый и последний элементы массива не изменять."
puts ror_task.even_elements_addition([1,0,0,0,0,0,0,8])

puts "#Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел 
#из данного массива, расположенных между первыми двумя нулями."
puts ror_task.sum_between_zeros([1,0,5,6,0,0,0,8])

puts " #Дан текст. Определите максимальное из имеющихся в нем чисел."
puts ror_task.max_number_in_text("dfd4f9dddd2") 

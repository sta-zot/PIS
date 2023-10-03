function result = Fibanacci(index)
// Функция Fibanacci(index) принимает на вход один аргумент индкс числа в последовательности фибаначи и возвращает его
//По формуле фибанначи каждое последующее число в ряду являестя суммой двух предыдущих. Соответсвенно первые 2 числа будут равны двум еденицам
FIB = [1,1]
for i = 3: index
    FIB(i) = FIB(i-1) + FIB(i-2)
end
disp(FIB)
result = FIB(index)
endfunction

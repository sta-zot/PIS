// 11 Написать функцию, ищущую наибольший
// четный и наименьший нечетный элемент
// во входной матрице.

function [MaxChet, MinNechet] = MaxChetMinNechet(MX)
    //Функция принимает целочисленную матрицу
    // и возвращает наибольшийчетный и 
    // наименьший нечетный элемент этой матрицы
    max = -2;
    min = 0;
    for i=1: prod(size(MX)) do
        if modulo(MX(i),2) == 0 then 
            if MX(i) > max then
                max = MX(i);
            end
        else
            if (min == 0) || (min > MX(i)) then
                min = MX(i);
            end
        end
    end
    MaxChet = max;
    MinNechet = min;
end

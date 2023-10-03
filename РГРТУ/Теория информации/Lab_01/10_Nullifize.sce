//10. Написать функцию, обнуляющую все элементы входной матрицы, меньшие по значению моды матрицы.

// Функция для поиска наименьшего из наиболее часто 
// встречающегося значения в заданой матрице 
function mf = GetMostFrequence(MX)

    max_count = 0;
    elem_heving_max_freq = 0;
    for i=1: prod(size(MX))
        count = 0;
        for j=1: prod(size(MX))
            if MX(i) == MX(j) then
                count = count + 1;
            end
        end
        if count > max_count then
            max_count = count;
            elem_heving_max_freq = MX(i);
        end
    end
    mf = elem_heving_max_freq;
end

// Функция обнуляющая все значения матрицы
// которыен меньше чем меньшее из наиболее частого значения
function resultedMX = Nulifiyer(MX)
    freq_value = GetMostFrequence(MX);
    for i=1: prod(size(MX)) do
        if MX(i) < freq_value then
            MX(i) = 0;
        end
    end
    resultedMX = MX
end
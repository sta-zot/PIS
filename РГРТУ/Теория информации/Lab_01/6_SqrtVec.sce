//6 Написать функцию, инициирующую вектор (одномерную матрицу) задаваемой длины единичными значениями, и в те элементы, корень порядкового номера которых является целым числом, записать сам порядковый номер.


function vector = SqrtVect(v_size)
    V = ones(1, v_size);
    for i = 1: v_size
        if modulo(sqrt(i), 1) == 0 then
            //disp(i)
            //disp(sqrt(i))
            V(i)  = sqrt(i)
         end
    end
    vector = V
endfunction

// 7. Написать функцию, выводящую таблицу умножения.

function [MT] = GetMultiplicationTable()
    MT = zeros(9,9)
    for i = 1: 9
        for j = 1: 9
            MT(i,j) = i * j
        end
    end
endfunction

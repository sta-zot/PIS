// 8. Написать функцию, инициирующую нулевую матрицу заданного размера,
// выбрать случайную строку и случайный столбец и записать в них единичные значения (при помощи оператора диапазона).


function [mt] = RandRowinMatrix(rows, cols)
// Description of RandRowinMatrix(mt_size)
MT = zeros(rows, cols);
rand__row_number = grand(1, 1, 'uin', 1, rows);
rand_col_number = grand(1, 1, 'uin', 1, cols);
MT(rand__row_number,1:cols) = 1;
MT(1:rows, rand_col_number) = 1;
mt = MT;
endfunction

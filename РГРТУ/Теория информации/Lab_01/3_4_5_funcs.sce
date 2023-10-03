// 3 Написать функцию, выводящую сумму чисел, делящихся на 5, в диапазоне от 0 до задаваемого числа.

function result = Div_to_five(upper_range_value)
// Function Div_to_five(upper_range_value) takes Upper Range Value and displays all numbers that are divisible by 5 in this range
result = 0
for i = 5 : upper_range_value
    if (pmodulo(i,5) == 0) then
        result = result + i; 
    end
end

endfunction

// ----------------------------------------------------------------

//4 Написать функцию, инициирующую матрицу задаваемого размера случайными числами в диапазоне [0, 100], вычислить среднее арифметическое всех ее элементов и вывести его как результат.

function avg = Matrix_avg(rows, cols)
// Description of Matrix_avg(rows, cols)

A = round(100 * rand(rows, cols))
avg = mean(A) 
endfunction


//----------------------------------------------------------------
//5 Написать функцию, инициирующую матрицу задаваемого размера нулевыми значениями, записать в ячейки, находящиеся по четным строкам матрицы


function matrix = ChetNechet(rows, cols)
// Function ChetNechet(rows, cols) takes a number of rows and a number of columns
// initializes matrix with a number of rows and a columns. 
// In the cells of even rows writes the product of the row and column numbers, and in the cells of odd rows - the sum

// Zero Matrix Initialization

ZM = zeros(rows, cols)

for i = 1: rows
    for j = 1: cols
        if pmodulo(i,2) == 0 then
            ZM(i,j) = i*j
        else
            ZM(i,j) = i+j
        end
    
    end

end
matrix = ZM

endfunction


// ----------------------------------------------------------------


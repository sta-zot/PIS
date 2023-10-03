// 12. Написать функцию, инициирующую матрицу задаваемого
// размера случайными числами, добавить в нее один столбец
// и одну строку, в которые записать сумму всех элементов
// по строкам и столбцам соответственно. В угловой элемент
// записать сумму всех элементов матрицы.

function resultMX = Total(rows, cols)
// Description of Total(rows, cols)

matrix = int(100 * rand(rows, cols));
for i=1: rows do
    matrix(i, cols+1) = sum(matrix(i,:));
end
for i = 1: cols do
    matrix(rows + 1, i ) = sum(matrix(:,i));
end
matrix(rows + 1, cols + 1) = sum(matrix);
resultMX = matrix;
endfunction
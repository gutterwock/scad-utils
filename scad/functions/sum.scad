function sum(list, index = 0, accum = 0) =
  index < len(list) ?
    sum(list, index + 1, accum + list[index]) :
    accum;

function sumTo(list, end, index = 0, accum = 0) =
  (index < len(list) && index < end + 1) ?
    sumTo(list, end, index + 1, accum + list[index]) :
    accum;
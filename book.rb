def book_amount (order)
  price = [0, 1 * 100, 0.95 * 200, 0.9 * 300, 0.8 * 400, 0.75 * 500]
  order = order.reject{ |x| x <= 0 }

  if order.size == 0
    return 0
  else
    kind = order.count{ |x| x > 0 }
    min_size = order.min
    return book_amount(order.map{ |x| x - min_size }) + (price[kind] * min_size)
  end
end

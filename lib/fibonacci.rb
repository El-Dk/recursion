# frozen_string_literal: true

def fibs(n)
  a = 1
  b = -1
  fibo = []
  n.times do |_i|
    c = a + b
    b = a
    a = c
    fibo << c
  end
  fibo
end

def fibs_rec(n, a = 1, b = -1, fibo = [])
  fibo << a + b
  fibs_rec(n - 1, a + b, a, fibo) unless n == 1
  fibo
end

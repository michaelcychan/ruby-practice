# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

def fibonacci(num)
  return 0 if num <= 1
  fib = [0,1]
  puts fib
  (num - 2).times do
    fib.push(fib[-2] + fib[-1])
  end
  return fib
end
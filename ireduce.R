#Reduce-derivative which receives f and x, and applies f(x) on its output until x == f(x) or maxiter is reached:

ireduce = function(f, x, maxiter = 50){
  i = 1
  while(!identical(f(x), x) & i <= maxiter) {x = f(x); i = i+1}; x
}

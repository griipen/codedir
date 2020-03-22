# This function generates the quantile(n) groups corresponding to each element in a numerical vector.
# Parameter n governs the number of quantiles (n = 4 for quartiles, n = 10 for deciles).

# > qgroup(seq(1:20), 5)
#  [1] 1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5

qgroup = function(numvec, n = 4){
  
  qtile = quantile(numvec, probs = seq(0, 1, 1/n), na.rm = T)
  out = sapply(numvec, function(x) sum(x >= qtile[-(n+1)]))
  
  return(out)
}

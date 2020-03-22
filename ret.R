ret = function(prices, logret = T){
  
  require(data.table)
  
  if((logret)){
    out = log(prices) - log(shift(prices))
  } else {
    out = prices / shift(prices) - 1
  }
  
  return(out)
  
}

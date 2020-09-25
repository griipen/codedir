tick = function(v, tickmatch = NULL){
  
  seqs = rowid(rleid(v))
  
  if(!is.null(tickmatch)){
  seqs[v != tickmatch] = NA
  }
  
  return(seqs)
  
}

# Consecutive run-length of vector with ability to match vector subset
# 
# vec = sample(c('P', 'U'), 100, replace = T, prob = c(0.70, 0.30))
# ids = sample(LETTERS[1:3], 100, T)
# y = sample(2000:2500, 100, T)
# 
# dt = data.table(y, ids, vec, key = c('ids', 'y'))
# dt[, Ticker := tick(vec), ids][]


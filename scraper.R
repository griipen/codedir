scraper = function(urls, xpath, wait){
  
  # sudo docker run -p 8050:8050 scrapinghub/splash
  
  require(splashr)
  require(rvest)
  require(data.table)
  
  out = lapply(urls, function(x){
    
    page = render_html(url = x, wait = wait) %>% html_nodes(xpath = xpath) %>% html_table()
    data.table(page[[1]])
    
  })
  
  rbindlist(out)
  
}
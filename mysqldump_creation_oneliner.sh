creating dump for stock data using commands
   mysqldump --complete-insert  -ustocks_user -hlocalhost -pstocks_pass stocks stock_data  | pv | gzip -c > ~/Downloads/stock_data.sql.gz / 
&&   mysqldump --complete-insert  -ustocks_user -hlocalhost -pstocks_pass stocks fin  | pv | gzip -c > ~/Downloads/fin.sql.gz /
&&   mysqldump --complete-insert  -ustocks_user -hlocalhost -pstocks_pass stocks symbol_mc_map  | pv | gzip -c > ~/Downloads/symbol_mc_map.sql.gz

awk '{FS=","}{printf("curl -o /dev/null -s -XPOST -w \"@/tmp/curl-csv-format.txt\"  \"http://payoutsadminservice.mkt.paytm/v2/commissions/admin/product/check\" -H \"Content-Type: application/json\" -d \x27{\"data\":{\"id\":%s,\"price\":%s,\"shipping_charges\":%s,\"qty\":%s,\"merchant_id\":%s},\"existing_data\":{\"id\":%s,\"price\":%s,\"shipping_charges\":%s,\"qty\":%s,\"merchant_id\":%s},\"type\":%s}\x27\n",$3,$4?$4:"\"\"",$5?$5:"\"\"",$6?$6:"\"\"",$2,$7?$7:"\"\"",$8?$8:"\"\"",$9?$9:"\"\"",$10?$10:"\"\"",$2,$1)}' /tmp/catalog_product_check_testcases.csv | xargs -L 1 -P 200 xargs| awk -v sum=0 '{FS=","}{sum=sum+$8;printf("total=%s current=%s average=%s\r",NR,$8,sum/NR)}'


and contents of curl-csv-format
%{time_namelookup},%{time_namelookup},%{time_connect},%{time_appconnect},%{time_pretransfer},%{time_redirect},%{time_starttransfer},%{time_total}\n

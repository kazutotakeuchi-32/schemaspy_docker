load data local infile 'docker-entrypoint-initdb.d/dc_sql/customers.csv'   
into table ec.customers
fields  
terminated by ',';

load data local infile 'docker-entrypoint-initdb.d/dc_sql/products.csv'   
into table ec.products
fields  
terminated by ',';


load data local infile 'docker-entrypoint-initdb.d/dc_sql/sales.csv'   
into table ec.sales
fields  
terminated by ',';

load data local infile 'docker-entrypoint-initdb.d/dc_sql/web_log.csv'   
into table ec.web_log
fields  
terminated by ',';
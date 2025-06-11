
if not exists 
(select o_custkey from sf_sample.public.orders where o_custkey not in 
        (select c_custkey from sf_sample.public.customer) fact_table.custcode))
insert into sf_sample.public.customer (c_custkey) values (seq_infered_cust_key.nextval)


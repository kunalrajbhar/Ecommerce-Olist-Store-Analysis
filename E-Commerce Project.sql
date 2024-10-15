create database olist_store_project;

# KPI 1
# Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics

select 
 case when dayofweek(str_to_date(o.order_purchase_timestamp,'%Y-%m-%d'))
 in (1,7) then 'WEEKEND' else 'WEEKDAY'end as DataType,
 count(distinct o.order_id) as TotalOrders,
 round(sum(p.payment_value)) as TotalPayments,
 round(avg(p.payment_value)) as AveragePayment
from
  orders_dataset o
join
  payments p on o.order_id = p.order_id
group by
  DataType;
  

# KPI 2
# Number of Orders with review score 5 and payment type as credit card.

select
  count(distinct p.order_id) as NumberOfOrders
from
  payments p
join
  reviews r on p.order_id = r.order_id
where 
  r.review_score = 5
  and p.payment_type = 'credit_card';
  
  
# KPI 3
# Average number of days taken for order_delivered_customer_date for pet_shop

select 
  product_category_name, 
  round(avg(datediff(order_delivered_customer_date, order_purchase_timestamp))) as avg_delivery_time
from
  orders_dataset o
join
  items i on i.order_id = o.order_id
join 
  products p on p.product_id = i.product_id
where
  p.product_category_name = 'pet_shop'
  and o.order_delivered_customer_date is not null and o.order_purchase_timestamp is not null;
  

# KPI 4
# Average price and payment values from customers of sao paulo city

select 
   round(avg(i.price)) as average_price,
   round(avg(p.payment_value)) as average_payment
from
   customers c
join
   orders_dataset o on c.customer_id = o.customer_id
join
   items i on o.order_id = i.order_id
join
   payments p on o.order_id = p.order_id
where
   c.customer_city = "Sao Paulo";
   

# KPI 5
# Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores

select 
   round(avg(datediff(order_delivered_customer_date,order_purchase_timestamp)),0) as AvgShippingDays,
   Review_score 
from
   orders_dataset o
join
   reviews r on o.order_id = r.order_id
where
   order_delivered_customer_date is not null
   and order_purchase_timestamp is not null
group by
   review_score 
order by 
   review_score desc;




  

 
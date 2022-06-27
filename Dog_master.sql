SELECT
    *
FROM component_stock;

alter table Dog_master
        rename column component_code to age;
        
alter table Dog_master
        rename column age to component_code;
        
alter table Dog_master
        rename to component_stock;
        
alter table component_stock
        rename to Dog_master;
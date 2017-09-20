Table "public.owners"
 Column |  Type   |                      Modifiers                      | Storage  | Stats target | Description 
--------+---------+-----------------------------------------------------+----------+--------------+-------------
 id     | integer | not null default nextval('owners_id_seq'::regclass) | plain    |              | 
 name   | text    |                                                     | extended |              | 
 age    | integer |                                                     | plain    |              | 
Indexes:
    "owners_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "properties" CONSTRAINT "properties_owners_id_fkey" FOREIGN KEY (owners_id) REFERENCES owners(id)



Table "public.properties"
  Column   |  Type   |                        Modifiers                        | Storage  | Stats target | Description 
-----------+---------+---------------------------------------------------------+----------+--------------+-------------
 id        | integer | not null default nextval('properties_id_seq'::regclass) | plain    |              | 
 name      | text    |                                                         | extended |              | 
 units     | integer |                                                         | plain    |              | 
 owners_id | integer |                                                         | plain    |              | 
Indexes:
    "properties_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "properties_owners_id_fkey" FOREIGN KEY (owners_id) REFERENCES owners(id)-- Create tables


# Tables
# parent_cells_by_2022_us_state_and_county
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
curl -o query00.json \
-X POST \
-d "with x as (select parent_cell from parent_cells_by_2022_us_state_and_county) select f.value FROM parent_cells_by_2022_us_state_and_county p inner join reference_cells_by_parent r on arrow_cast(p.parent_cell, 'Int64')=arrow_cast(r.parent_cell, 'Int64') inner join h3_features_by_parent f on arrow_cast(r.parent_cell, 'Int64')=arrow_cast(f.parent_cell, 'Int64') where p.name='Maryland' LIMIT 2" localhost:8080/api/sql
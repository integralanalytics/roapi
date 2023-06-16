# Tables
# parent_cells_by_2022_us_state_and_county
# reference_cells_by_parent
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
curl -o query1.json \
-X POST \
-d "SELECT f.* FROM parent_cells_by_2022_us_state_and_county p inner join reference_cells_by_parent r on arrow_cast(p.parent_cell, 'Int64')=arrow_cast(r.parent_cell, 'Int64') inner join h3_features_by_parent f on arrow_cast(r.parent_cell, 'Int64')=arrow_cast(f.parent_cell, 'Int64') and arrow_cast(r.reference_h3, 'Int64')=arrow_cast(f.reference_h3, 'Int64') where p.name='Maryland' and f.name='parks_percent_area' LIMIT 2" localhost:8080/api/sql
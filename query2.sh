# Tables
# parent_cells_by_2022_us_state_and_county
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
curl -o query2.json \
-X POST \
-H 'ACCEPT: application/vnd.apache.arrow.stream' \
-d "SELECT r.parent_cell, f.name, sum(f.value) FROM reference_cells_by_parent r inner join h3_features_by_parent f on arrow_cast(r.parent_cell, 'Int64')=arrow_cast(f.parent_cell, 'Int64') and arrow_cast(r.reference_h3, 'Int64')=arrow_cast(f.reference_h3, 'Int64') group by r.parent_cell, f.name" localhost:8080/api/sql
# Tables
# parent_cells_by_2022_us_state_and_county
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
curl -o distinct-parents.json \
-X POST \
-d "select DISTINCT parent_cell, name from h3_features_by_parent" localhost:8080/api/sql
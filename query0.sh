# Tables
# parent_cells_by_2022_us_state_and_county
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
curl -o query0.json \
-X POST \
-d "SELECT * FROM parent_cells_by_2022_us_state_and_county" localhost:8080/api/sql
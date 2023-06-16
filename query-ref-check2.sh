# Tables
# parent_cells_by_2022_us_state_and_county
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
# application/vnd.apache.arrow.file
# application/parquet

# inner join h3_features_by_parent f on arrow_cast(r.parent_cell, 'Int64')=arrow_cast(f.parent_cell, 'Int64')
curl -o ref-check2.json \
-X POST \
-H 'ACCEPT: application/json' \
-d "select count(1) FROM h3_features_by_parent r where r.parent_cell=581206244488904703" localhost:8080/api/sql
# Tables
# parent_cells_by_2022_us_state_and_county
# h3_features_by_parent
# derived_lg_bus_surround_sales_5km

# -H 'ACCEPT: application/vnd.apache.arrow.stream' \
# application/vnd.apache.arrow.file
# application/parquet
curl -o ref-check.json \
-X POST \
-H 'ACCEPT: application/parquet' \
-d "select reference_h3 FROM reference_cells_by_parent r where r.parent_cell = (select parent_cell from parent_cells_by_2022_us_state_and_county where name='Maryland')" \
localhost:8080/api/sql
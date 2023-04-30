# BikeStore Example

![60%](https://progress-bar.dev/60/?title=Done)

The BikeStore example is a sample database for a fictional bike store. The database is divided into two schemas: `sales` and `production`.

## ER Model

![BikeStore ER model](./ER_Models/BikeStore_ER_Model.png)

The above image shows the entity-relationship (ER) model for the BikeStore database. The `sales` schema contains tables for customers, staff, orders, stores, and order items. The `production` schema contains tables for categories, products, stocks, and brands.

## SQL Scripts

The following SQL scripts can be used to construct the BikeStore database:

- **[create_bikestore.sql](./SQL_Scripts/create_bikestore.sql)**: A script that creates the `sales` and `production` schemas, along with all the necessary tables, constraints, and indexes.
- **[populate_bikestore.sql](./SQL_Scripts/populate_bikestore.sql)**: A script that inserts sample data into the `sales` and `production` tables.
- **queries.sql**: A script that includes a set of example queries for the BikeStore database, including basic SELECT queries, JOIN queries, and aggregate queries.

## Getting Started

To get started with the BikeStore example, follow these steps:

1. Clone the repository to your local machine.
2. Open your preferred SQL editor or environment and connect to an instance of MS SQL Server.
3. Open `SQL_Scripts` directory.
4. Run the `create_bikestore.sql` script to create the `sales` and `production` schemas and tables in the database.
5. Run the `populate_bikestore.sql` script to insert sample data into the tables.
6. Use the `queries.sql` script to explore the data and practice writing SQL queries.

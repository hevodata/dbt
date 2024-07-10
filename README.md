## **Testing dbt project: hevo**

This dbt project transforms raw data from a snowflake database into a customers, payments and orders model ready for analytics.

### **What's in this repo?**

The raw data consists of customers, orders, and payments, with the following entity-relationship diagram:
![image](https://github.com/hevodata/dbt/assets/79274019/d798e7dd-8404-4220-bc12-222c43cb5fc3)

### **Running this project**
To get up and running with this project:
1. Setup DBT Cloud Project
2. Ensure your profile is setup correctly for GitHub integration and Warehouse  
3. Clone this repository into your GitHub.
4. Create a new brach and Build your models
5. Run the models:
   $ dbt run
> _NOTE: If this steps fails, it might mean that you need to make small changes to the SQL in the models folder to adjust for the flavor of SQL of your target database. Definitely consider this if you are using a community-contributed adapter._
6. Test the output of the models:
>   $ dbt test
7. Build the model(Test + Run):
>   $ dbt build
8. Generate documentation for the project:
>   $ dbt docs generate
9. View the documentation for the project:
>   $ dbt docs serve


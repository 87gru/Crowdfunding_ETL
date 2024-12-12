# Crowdfunding_ETL Project
## Group Members
- Elizabeth Adeoye
- Viviana Yamell Mejia
- Geovanni Rubio

## Assignment Breakdown
The assignment is divided into four parts:

### Create Category/Subcategory DataFrames
- Read the `crowdfunding.xlsx` Excel file and create a Category Dataframe.
    - A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
    - A "category" column that contains only the category titles
    - Export the category DataFrame as `category.csv`
- Create a Subcategory DataFrame from the `crowdfunding.xlsx` file.
    - A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
    - A "subcategory" column that contains only the subcategory titles
    - Export the Subcategory DataFrame as `subcategory.csv`

### Create the Campaign DataFrame
- Extract `crowdfunding.xlsx` into a DataFrame with the following columns:
    - The "cf_id" column
    - The "contact_id" column
    - The "company_name" column
    - The "blurb" column, renamed to "description"
    - The "goal" column, converted to the float data type
    - The "pledged" column, converted to the float data type
    - The "outcome" column
    - The "backers_count" column
    - The "country" column
    - The "currency" column
    - The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
    - The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
    - The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
    - The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
- Export the DataFrame to `campaign.csv`

### Create the Contacts DataFrame
- Read, extract and transform data in the `contacts.xlsx` Excel file. We chose Option 1 for extracting the data: using Python dictionary methods.
- After creating DataFrame from `contacts.xlsx`, iterate through the DF and convert each row to a dictionary using JSON.
- Then add the dictionary values to list.
- Create DataFrame with the list.
- Split each each name in the name column into first and last name, place those into their distinct columns.
- Clean and export the DataFrame as `contacts.csv`.

### Create the Crowdfunding Database
- Create an ERD after inspecting the four CSV files that were created from the DataFrames.
- Create a table schema using the ERD as a guide. Make proper references to Primary Keys/Foreign Keys.
- Import each CSV file into its corresponding SQL table.
- Verify that each table has the correct data by running a `SELECT` statement for each.

## Included in Repository
- `ReadME.md`
- `ETL_Mini_Project_Starter_Code_GRubio_VMejia_EAdeoye.ipynb`
- `ERD-crowdfunding.png`
- `crowdfunding_db_schema.sql`
- Resources Directory:
    - `crowdfunding.xlsx`
    - `contacts.xlsx`
    - `subcategory.csv`
    - `category.csv`
    - `contacts.csv`
    - `campaign.csv`
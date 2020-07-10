# sql_task2

### Task - cap2
#### All imports and exports were executed in MySQL Workbench and also tested in bash.

### Task - cap3
#### `orase_db.sql` 
##### - database was created in MySQL Workbench; data from table `orase` was imported from all the files in the resources folder
##### - all exercises ( regarding imports and alterations) are in `sql_task2_cap3.sql` script
##### - database is in final form (with all the imports already done) - contains 704 rows

#### `orase_db_bash.sql` 
##### - database was created by running commands in bash; data from table `orase` was imported also from the files in the resources folder
##### - imports from .txt files were done by using `mysqlimport` command
##### - when using `mysqlimport` command to import data from a .txt file, the file must have the same name as the table in which data must be imported because when giving the command, only the name of the database and the .txt files are specified
##### - before running every `mysqlimport` command, each file was renamed one by one 
##### - all necessary commands are in `sql_task2_cli_bash.txt`
##### - database is in final form (with all the imports already done) - contains 704 rows

##### `sql_powershell.txt` contains the same `mysqlimport` commands used in Powershell

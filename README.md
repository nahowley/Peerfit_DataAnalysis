# Peerfit_DataAnalysis

Given several different datasets for member reservation data, we want to extract an accurate picture of reservations as a whole at Peerfit. The `project/data` directory provides the MySQL data dump necessary to complete questionnaire.

>Download and install MySQL on your computer: https://dev.mysql.com/downloads/mysql/. (Optional: If on a Mac, you can install MySQL via brew by running `brew install mysql` in your terminal.)

>Launch mysql in your shell (Windows) or terminal (Mac) using the command below. (Optional: Depending on the configuration you used during your MySQL installation, you can use a different user than `root` and can use the `-p` command to require a password.)

>```
mysql -u root -h localhost
```

>Create an empty database.

>```
CREATE DATABASE your-database-name;
```

>Exit the mysql client.

>```
exit;
```

>In your shell / terminal run the command below to import the peerfit_interview data into your database.

>>*Windows:*
```
mysql -u root your-database-name < "PATH_TO_FILE\peerfit_interview.sql"
```

>>*Mac:*
```
mysql -u root -h localhost your-database-name < /PATH_TO_FILE/peerfit_interview.sql
```

From here, you can query the data using the mysql CLI tool or through your favorite MySQL desktop client.

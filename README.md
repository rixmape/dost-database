# DOST Scholarship Monitoring System Database

### How to make the database available in my machine?

1. Download the [MySQL Community Server](https://dev.mysql.com/downloads/mysql/). An installation guide is available [here](https://www.youtube.com/watch?v=u96rVINbAUI).
2. Open MySQL Workbench and connect to your default MySQL server from the home screen.
3. Open the project SQL script by clicking `File` > `Open SQL Script` in the top toolbar.
   - You may also use the keyboard shortcut `Ctrl`+`Shift`+`O`.
4. Navigate to the project folder and select `dost.sql`.
5. Execute the script by clicking `Query` > `Execute (All or Selection)` in the top toolbar.
   - You may also use the keyboard shortcut `Ctrl`+`Shift`+`Enter`.

### How to automatically populate records into the database?

1. [Python](https://www.python.org/downloads/) must be available on your computer.
2. Install [`mysql-connector-python`](https://pypi.org/project/mysql-connector-python/) as a Python package by running the command `pip install mysql-connector-python`.
3. Navigate to the project folder.
4. Run the automation script by executing the command `python main.py`.

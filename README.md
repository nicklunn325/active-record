## ActiveRecord

# What is ActiveRecord?

    - an ORM (Object Relational Mapping)
    - makes fetching and representing data easier than writing custom SQL
    - intermediary between ruby language and our DB

# Questions?

    - What methods are given with ActiveRecord::Base?
        -C: .create
        -R: .all
            .find
            .find_by
            .where
            .order
        -U: update
        -D: destroy

    - When we were working with Ruby Objects, what did .all return?
        - all instances of a class, in an array

    - ActiveRecord Relations

    - naming conventions are very important

# What is Rake?

    - gardening tool
    - automates tasks for us, specifically creating our DB tables or updating them

# Using ActiveRecord

    - connecting to the DB (database connection needs to be configured and established)
    - migrations need to be written to create the tables in our database
    - ** those migrations need to be executed with rake db:migrate
    - each DB table needs to have a corresponding ruby model that inherits from ActiveRecord::Base


    - created migration files (setting up our database tables)
    - executed migration files
    - created models to go with database tables

# What files do we need?

# How do we connect to the DB?

# How do we configure the DB?

# - we can write the migrations to create a users table

# - we can execute with rake db:migrate

# - we know we need a User Mode

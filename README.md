##Simplified nbd for my written test project.

--------

Sunspot need **JVM**,so your PC must install JVM.

And then ,you can use fulltext by following step.

start the packaged Solr distribution with:

    bundle exec rake sunspot:solr:start 

--------

Before run the following commands,you must configure you mysql to username with __root__ and  password with __123456__.

Of course,you also can modify all username and password in the config/database.yml file.

####1.Create Database:

    rake db:create

####2. Execute migrations:
    
    rake db:migrate

####3. Initialize data:

    rake db:seed

####4. Admin Login: 

> username: admin ,password: 123456

All articles initial state is ** draft **.


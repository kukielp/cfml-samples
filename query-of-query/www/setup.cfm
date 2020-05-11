<cfquery>
    CREATE TABLE IF NOT EXISTS "address_book" (
        "id" serial,
        "name" text,
        "city" text,
        "zipcode" text,
        PRIMARY KEY( id )
    );
    insert into address_book ( name, city, zipcode ) values ( 'Ron', 'Boston', '02134' );
    insert into address_book ( name, city, zipcode ) values ( 'Mike', 'Boston', '02134' );
    insert into address_book ( name, city, zipcode ) values ( 'Ron', 'Medford', '02155' );
    insert into address_book ( name, city, zipcode ) values ( 'Fred', 'Milton', '03851' );
    insert into address_book ( name, city, zipcode ) values ( 'Ron', 'Portsmouth', '03801' );
</cfquery>
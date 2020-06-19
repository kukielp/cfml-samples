Simply clone the parent repo.

cd to ```query-of-query```

and run:

```docker-compose up```

This will:
- pull commandbox with lucee and cf2018
- pull a postgress database
- create a network the 2 containers can communicate with each other on

Then open [http://localhost:8852/](http://localhost:8852/) in your browser to see the code execute.

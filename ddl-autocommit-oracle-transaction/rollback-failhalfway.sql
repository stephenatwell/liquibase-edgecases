create table animal (genus VARCHAR(50), species VARCHAR(50));

EXECUTE IMMEDIATE 'DROP TABLE ' || person;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
-- should also revent the animals table to its old state, except that is never needed because that's the sql that failed to run.

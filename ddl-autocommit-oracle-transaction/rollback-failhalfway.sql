EXECUTE IMMEDIATE 'DROP TABLE ' || animal;
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
-- should also revent the animals table to its old state, except that is never needed because that's the sql that failed to run.

<?php
// Define PostgreSQL database server connect parameters.
define('PG_HOST', 'ec2-3-229-51-131.compute-1.amazonaws.com');
define('PG_PORT', 5432);
define('PG_DATABASE', 'dbvn8gp09bnheg');
define('PG_USER', 'mqeckcahvzjmff');
define('PG_PASSWORD', 'ee1c68e4e6ae3faeb4ee85fc7d551f212dc5cad54c3a356d2387ab9f4e0bed30');
define('PG_URI', 'postgres://mqeckcahvzjmff:ee1c68e4e6ae3faeb4ee85fc7d551f212dc5cad54c3a356d2387ab9f4e0bed30@ec2-3-229-51-131.compute-1.amazonaws.com:5432/dbvn8gp09bnheg');
define('PG_Heroku CLI', 'heroku pg:psql postgresql-animate-46775 --app desolate-scrubland-75326');
define('ERROR_ON_CONNECT_FAILED', 'Connection failed!');

// Merge connect string and connect db server with default parameters.
function getDB() {
    return pg_pconnect (' host=' . PG_HOST .
                        ' port=' . PG_PORT .
                        ' dbname=' . PG_DATABASE .
                        ' user=' . PG_USER .
                        ' password=' . PG_PASSWORD
                       ) or die (ERROR_ON_CONNECT_FAILED);
}
?>
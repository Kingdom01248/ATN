<?php
// Define PostgreSQL database server connect parameters.
define('PG_HOST', 'ec2-52-44-139-108.compute-1.amazonaws.com');
define('PG_PORT', 5432);
define('PG_DATABASE', 'd3mjek46h83nkd');
define('PG_USER', 'dbiygnexusycpe');
define('PG_PASSWORD', '2c2be29b8295e643ce15525eaf6c21b8642245a6a2d31da580f33daf0020b27d');
define('PG_URI', 'postgres://dbiygnexusycpe:2c2be29b8295e643ce15525eaf6c21b8642245a6a2d31da580f33daf0020b27d@ec2-52-44-139-108.compute-1.amazonaws.com:5432/d3mjek46h83nkd');
define('PG_Heroku CLI', 'heroku pg:psql postgresql-adjacent-52772 --app agile-spire-02688');
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
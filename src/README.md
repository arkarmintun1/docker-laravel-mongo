# Your Laravel app goes in here

Change the root directory name inside nginx **default.conf** file

# MONGO

Install mongo driver for laravel [Mongo Driver](https://github.com/jenssegers/laravel-mongodb)

## Configuration

```
'mongodb' => [
    'driver'   => 'mongodb',
    'host'     => 'mongodb, // mongodb container name
    'port'     => env('MONGO_DB_PORT', 27017),
    'database' => env('MONGO_DB_DATABASE'),
    'username' => env('MONGO_DB_USERNAME'),
    'password' => env('MONGO_DB_PASSWORD'),
    'options'  => [
        'database' => env('MONGO_DB_DATABASE'),
    ]
]
```
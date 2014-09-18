hapi-influx
===========

Hapi plugin to create a shared InfluxDB client

## Install
`npm install hapi-influx`

## Usage
Load plugin into your Hapi server as normal.

The default options are.

```javascript
  defaults = {
    hosts: [
      {
        host: 'localhost',
        port: 8086
      }
    ],
    username: 'root',
    password: 'root',
    database: 'test'
  };
```

To access the client in other plugins, place this plugin first (plugins
are loaded in the order they're declared) then reference the client
like:

`influx = plugin.plugins['hapi-influx'].influx`

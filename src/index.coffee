Influx = require 'influx'
objectAssign = require 'object-assign'

exports.register = (plugin, options, next) ->
  defaults =
    hosts: [
      {
        host: 'localhost',
        port: 8086
      }
    ],
    username: 'root',
    password: 'root',
    database: 'test'

  options = objectAssign defaults, options

  influx = Influx(options)
  plugin.expose('influx', influx)

  plugin.log(['hapi-influx', 'info'], 'InfluxDB connection created')

  next()

exports.register.attributes =
  pkg: require('../package.json')


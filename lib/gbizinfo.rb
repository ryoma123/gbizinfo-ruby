require_relative 'gbizinfo/version'

require 'faraday'
require 'faraday_middleware'

require_relative 'gbizinfo/config'
require_relative 'gbizinfo/faraday/connection'
require_relative 'gbizinfo/faraday/request'
require_relative 'gbizinfo/api/endpoints'
require_relative 'gbizinfo/api/error'
require_relative 'gbizinfo/client'

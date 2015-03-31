module Raudra
	require 'cassandra'

	DB_CONFIG = YAML.load(ERB.new(File.read(Rails.root.join('config/database.yml'))).result)[Rails.env]
	DB_CLUSTER = Cassandra.cluster(username: DB_CONFIG['username'],
										password: DB_CONFIG['password'],
										hosts: DB_CONFIG['hosts'])
	SESSION = Raudra::DB_CLUSTER.connect(Raudra::DB_CONFIG['keyspace'])

	module Record
		
	end
end
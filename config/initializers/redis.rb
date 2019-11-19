uri = URI.parse(ENV['REDIS_URL'] || 'redis://temp:8888')
redis = Rails.env.test? ? MockRedis.new : Redis.new(url: uri)
Nightfury.redis = Redis::Namespace.new('reports', redis: redis)

# Alfred - Used currently for Round Robin. Add here as you use it for more features
$alfred = Redis::Namespace.new('alfred', redis: redis, warning: true)

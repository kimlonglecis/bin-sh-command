#/bin/bash

docker exec -it redis_backend_cache redis-cli -p 6379 info | egrep --color "(role|used_memory:|used_memory_human|used_memory_peak|used_memory_rss|maxmemory|evicted_keys|uptime_in_days)"

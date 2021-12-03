
import redis

redis_db = redis.Redis(
	host="localhost",
	port=6379,
	db=0
)

def redis_set(key, value):
	status_code = redis_db.set(key, value)


def redis_get(key):
	return redis_db.get(key).decode("utf-8")

# redis_db.set("name", "andrew")
# redis_db.set("age", 21)
# redis_db.get("age")
# redis_db.get("name")

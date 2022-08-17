host="fabmedical-713653.mongo.cosmos.azure.com"
username="fabmedical-713653"
password="bjgfYJiauNnarbwe0tRfbH8emhKW66D93c6mkLzOtt3eiwRHJc4L7ZpX3geLj3AwBZ0nHn724Mv6Q7scYcwwZg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done

SCRIPT_DIR=$(dirname "$0")

FILES=$SCRIPT_DIR/*-create.js
for f in $FILES; do mongo -u $MONGODB_USER -p $MONGODB_PASSWORD localhost:27017/users $f; done

FILES=$SCRIPT_DIR/*-insert.js
for f in $FILES; do mongo -u $MONGODB_USER -p $MONGODB_PASSWORD localhost:27017/users $f; done

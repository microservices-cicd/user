FILES=$APP_DATA/scripts/*-create.js
for f in $FILES; do mongo -u $MONGODB_USER -p $MONGODB_PASSWORD localhost:27017/users $f; done

FILES=$APP_DATA/scripts/*-insert.js
for f in $FILES; do mongo -u $MONGODB_USER -p $MONGODB_PASSWORD localhost:27017/users $f; done

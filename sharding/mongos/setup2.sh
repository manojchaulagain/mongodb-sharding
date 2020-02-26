docker exec -it mongos bash -c "echo 'sh.addShard(\"shard2rs/10.0.0.41:50004,10.0.0.41:50005,10.0.0.41:50006\")' | mongo" &&
  docker exec -it mongos bash -c "echo 'sh.status()' | mongo"

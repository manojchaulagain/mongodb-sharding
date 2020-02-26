docker exec -it mongos bash -c "echo 'sh.addShard(\"shard1rs/10.0.0.41:50001,10.0.0.41:50002,10.0.0.41:50003\")' | mongo" &&
  docker exec -it mongos bash -c "echo 'sh.status()' | mongo"

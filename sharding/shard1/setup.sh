docker exec -it shard1svr1 bash -c "echo 'rs.initiate({
_id: \"shard1rs\",
    members: [
      { _id : 0, host : \"10.0.0.41:50001\" },
      { _id : 1, host : \"10.0.0.41:50002\" },
      { _id : 2, host : \"10.0.0.41:50003\" }
    ]
  }
)' | mongo" &&
  docker exec -it shard1svr1 bash -c "echo 'rs.status()' | mongo"

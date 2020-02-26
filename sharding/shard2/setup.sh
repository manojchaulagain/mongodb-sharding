docker exec -it shard2svr1 bash -c "echo 'rs.initiate({
_id: \"shard2rs\",
    members: [
      { _id : 0, host : \"10.0.0.41:50004\" },
      { _id : 1, host : \"10.0.0.41:50005\" },
      { _id : 2, host : \"10.0.0.41:50006\" }
    ]
  }
)' | mongo" &&
  docker exec -it shard2svr1 bash -c "echo 'rs.status()' | mongo"

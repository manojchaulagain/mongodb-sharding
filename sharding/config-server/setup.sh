docker exec -it cfgsvr1 bash -c "echo 'rs.initiate({
_id: \"cfgrs\",
    configsvr: true,
    members: [
      { _id : 0, host : \"10.0.0.41:40001\" },
      { _id : 1, host : \"10.0.0.41:40002\" },
      { _id : 2, host : \"10.0.0.41:40003\" }
    ]
  }
)' | mongo" &&
    docker exec -it cfgsvr1 bash -c "echo 'rs.status()' | mongo"

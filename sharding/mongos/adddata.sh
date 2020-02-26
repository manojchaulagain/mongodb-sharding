for i in {1..50}; do echo -e "use sharddemo \n db.movies2.insertOne({\"title\": \"Spider Man $i\", \"language\": \"English\"})" | mongo mongodb://10.0.0.41:60000; done

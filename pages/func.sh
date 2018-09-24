#!/bin/bash -x


listnfldays(){
	curl --request GET \
  --url 'https://therundown.io/api/v1/sports/2/dates?format=epoch' \
  --data '{}'
}





listnflbyDate(){
	DATEID=$1
	curl --request GET \
  --url 'https://therundown.io/api/v1/sports/2/events/$DATEID' \
  --data '{}'
}

listnflgames(){
	curl --request GET \
  --url https://therundown.io/api/v1/sports/2/events \
  --data '{}'
}




nflgame(){
	gameid=$1
	curl --request GET \
  --url https://therundown.io/api/v1/events/$gameid \
  --data '{}'
}


Mlines(){
	Mlineid=$1
	curl --request GET \
  --url https://therundown.io/api/v1/lines/$Mlineid/moneyline \
  --data '{}'
}






#./func.sh | jq '.events[] | .event_id'
#listnflgames


# ./func.sh | jq .teams[1]
#./func.sh | jq '.lines[] | .affiliate'
#./func.sh | jq '.lines[] | .line_id'
#nflgame 3428dc9acf46236eaf5d6f91468f1bf0

Mlines 5179212
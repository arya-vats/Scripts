echo "$1"
read region

url="https://weatherdbi.herokuapp.com/data/weather/$region"
json="$(wget -qO- "$url")"

c=$(echo $json|jq -r ."currentConditions|(.temp.c)")
humidity=$(echo $json|jq -r ."currentConditions|.humidity")


echo "You are currently viewing the weather of $region"
echo "Temperature: $c℉ "
echo "Humidity: ${humidity}"

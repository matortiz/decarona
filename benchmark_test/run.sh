CONFIG_FILE="./_config"
CONFIGURE_FILE="./configure.sh"
TEST_RESULT_DIR="./results"
NUMBER_REQUESTS="500"

test_urls[0]="decarona/test_usuario/index.php?r=usuario"
test_urls[1]="decarona/test_ci/"
test_urls[2]="http://test_zf.decarona.com/usuario"

if ! [ -f $CONFIG_FILE ];
then
    $CONFIGURE_FILE
fi
source $CONFIG_FILE

if ! [ -d $TEST_RESULT_DIR ];
then
    mkdir $TEST_RESULT_DIR
    echo "result directory created: $TEST_RESULT_DIR"
fi


for idx in ${!test_urls[*]}
do
    url=${test_urls[$idx]}
    file="$TEST_RESULT_DIR/abres_$idx.csv"
    regex="^http"
    if [[ $url =~ $regex ]]; then
        fullurl=$url
    else
        fullurl="http://$HOST/$url"
    fi
    command="ab -k -n $NUMBER_REQUESTS -c 2 -e $file $fullurl"
    echo $command
    $command
    echo "results of $fullurl in $file"
done



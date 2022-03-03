for ARGUMENT in "$@"
do

    KEY=$(echo $ARGUMENT | cut -f1 -d=)
    VALUE=$(echo $ARGUMENT | cut -f2 -d=)   

    case "$KEY" in
            MODULE)      MODULE=${VALUE} ;;
            *)   
    esac    


done

DUMMY_MODULE='blueprint'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "\n${BLUE}Renaming variables and files...${NC}\n"

sed -i s/$DUMMY_MODULE/$MODULE/g tests/context.py
sed -i s/$DUMMY_MODULE/$MODULE/g tests/test_app.py
mv $DUMMY_MODULE $MODULE

sed -i s/$DUMMY_MODULE/$MODULE/g pytest.ini
sed -i s/example/$MODULE/g Makefile
sed -i s/$DUMMY_MODULE/$MODULE/g Makefile

echo -e "\n${BLUE}Testing if everything works...${NC}\n"

echo -e "\n${BLUE}Test: make run${NC}\n"
make run
echo -e "\n${BLUE}Test: make test${NC}\n"
make test


# Syntax: ./checkout-impl.sh Task1 https://github.com/prystoynyy/Task1.git

taskFolder=$1
implementationUrl=$2

if [ $# -ne 2 ]; then
    echo $0: usage: checkout-impl.sh taskFolder implementationUrl
    exit 1
fi

echo $taskFolder $implementationUrl
echo -e 'Delete old implementation from' $taskFolder
sudo rm -rf $taskFolder
git clone $implementationUrl $taskFolder

echo "Done!"
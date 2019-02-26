if [ "$#" -eq  "0" ]
then
    cd  ~; just --list | tail -n +2
else
    (echo $@ | awk '{ print $1 }' | xargs just) 2> ~/temp/just.log > ~/temp/just.log
fi

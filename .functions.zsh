get_remote() {
    git remote -vv | tail -n1 | awk '{print $2}' | tr -d '\n' | xcopy
}

get_branch() {
    git branch | sed -n -e 's/^\* \(.*\)/\1/p' | xcopy
}

open_remote() {
    xdg-open $(git remote -vv | grep origin | tail -n1 | awk '{print $2}' | xargs -I URL sh -c "echo URL | grep https || echo URL | sed 's/:/\//' | sed 's/^.*@/https:\/\//'") 1> /dev/null
}

grab() {
    realpath "$1" | tr -d "\n" | xclip -selection clipboard
}


function cuda_is_availabe() {
    python3 -c "import torch; print(torch.cuda.is_available())"
}


start_tensorboard() {
    logdir="$@"
    echo "Starting background TensorBoard server with logs at $logdir"
    tmux set-environment -g logdir $logdir \;             \
        new-session -s "[tensorboard] $(basename $(pwd))" \
        -d 'tensorboard --logdir=$logdir'
}

cpp_sources() {
    find . -regextype posix-extended -regex \
        ".*\.(cpp|cxx|cc|hpp|hxx|h)" |
        grep -vE "^./(build|3rdparty)/"
}

filename () {
    BASENAME="$(basename -- $1)"
    FILENAME=${BASENAME%.*}
    echo $FILENAME
}

check_includes() {
    grep -rh include | sort | uniq
}

check_imports() {
    grep -rh import | sort | uniq
}

fast_remove() {
    DIR="$(realpath $1)"
    printf '%s ' "[WARNING] Removing all contents in \"${DIR}\", are you sure (y/n)"
    read REPLY
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    fi
    mkdir /tmp/empty_directory
    rsync -a --delete /tmp/empty_directory/ ${DIR}/
    rm -rf ${DIR}
    rm -rf /tmp/empty_directory
    echo "Done!"
}

zip_folder() {
    folder="$1"
    echo "Creating zip file of $folder"
    zip -r $folder.zip $folder
}

compile_commands() {
    printf '[' > compile_commands.json
    find  "$1" -type f -name 'compile_commands.json' -exec sh -c "cat {} | tail -n+2 | head -n-1 && printf ','" >> compile_commands.json \;
    sed -i '$s/.$//' compile_commands.json
    printf '\n]\n' >> compile_commands.json
}

mpc(){
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

bk(){
    s= 
    for i in {1..$1}
    do 
        s="$s../"
    done
    cd $s
}
png_to_pdf () {
    IMAGE="$1"
    BASENAME="$(basename -- $IMAGE)"
    FILENAME=${BASENAME%.*}
    convert $IMAGE ${FILENAME}.pdf
}

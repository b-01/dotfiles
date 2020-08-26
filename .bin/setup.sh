git clone --bare https://github.com/b-01/dotfiles.git $HOME/.dotfiles

function config {
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

mkdir -p .config-backup

config checkout

if [ $? = 0 ]; then
    echo "Checked out config."
else
    echo "Deleting pre-existing dot files!"
    echo -n "Abort now with CTRL+C if needed - else press enter!"
    read noop
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} rm {}
fi;
config checkout
config config status.showUntrackedFiles no


set repo_root (dirname (dirname (status --current-filename)))

set -gx ASDF_DATA_DIR $HOME/withvardir
rm -rf $HOME/withvardir

fish $repo_root/hooks/install.fish || exit 1
source $HOME/withvardir/asdf.fish  || exit 1
asdf --version                     || exit 1
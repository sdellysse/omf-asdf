set repo_root (dirname (dirname (status --current-filename)))

set -e ASDF_DATA_DIR
rm -rf $HOME/.asdf

fish $repo_root/hooks/install.fish || exit 1
source $HOME/.asdf/asdf.fish       || exit 1
asdf --version                     || exit 1
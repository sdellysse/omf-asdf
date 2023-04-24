set -q ASDF_DATA_DIR || set -gx ASDF_DATA_DIR $HOME/.asdf

source $ASDF_DATA_DIR/completions/asdf.fish

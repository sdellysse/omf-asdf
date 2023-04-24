set -q ASDF_DATA_DIR || set -gx ASDF_DATA_DIR $HOME/.asdf

if test -d $ASDF_DATA_DIR
    echo "using existing installation $ASDF_DATA_DIR"
else
    echo "installing latest asdf into $ASDF_DATA_DIR..."
    git clone https://github.com/asdf-vm/asdf.git $ASDF_DATA_DIR
    git -C $ASDF_DATA_DIR checkout (git -C $ASDF_DATA_DIR describe --abbrev=0 --tags)
    echo "done"
end
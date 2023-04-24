set -q ASDF_DATA_DIR || set -gx ASDF_DATA_DIR $HOME/.asdf

echo "asdf itself will NOT be removed. If you'd like to also completely remove asdf and all installed tools/versions:"
echo ""
echo "  \$ rm -rf $ASDF_DATA_DIR"
echo ""

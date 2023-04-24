set repo_root (dirname (dirname (status --current-filename)))

fish $repo_root/test/test-novar.fish   || exit 1
fish $repo_root/test/test-withvar.fish || exit 1


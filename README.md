# dfx-completions

Addtional completion definitions for IC developers. Only zsh and bash are supported. 

**Enjoy your development on IC!!**

## zsh

Find `_dfx` file in the directory, the name of which is the version of `dfx` you're using (e.g., `0.14.0`). It contains the necessary completion function.

Download and put it on your local directory for zsh completions (e.g., `$HOME/.zsh.d/completions`).

Edit your `$HOME/.zshrc` (or whatever you're using to configure your zsh) by adding the above directory into `$FPATH` such that the zsh's completion functionality can find it. Replace "`$HOME/.zsh.d/completions`" with the directory you've placed `_dfx` on.

```
# `$HOME/.zshrc`

export FPATH=$HOME/.zsh.d/completions:$FPATH
```

Refresh your zsh by

```
$ exec $SHELL
$ compinit
```

Try the completions for `dfx` commands! Upon typing `dfx [TAB]`, you will find like this:

```
$ dfx [TAB]

dfx commands
_language-service  -- Starts the Motoko IDE Language Server. This is meant to be run by editor plugins not the end-user
beta               -- Beta commands
bootstrap          -- Starts the bootstrap server
build              -- Builds all or specific canisters from the code in your project. By default, all canisters are built
cache              -- Manages the dfx version cache
canister           -- Manages canisters deployed on a network replica
deploy             -- Deploys all or a specific canister from the code in your project. By default, all canisters are deployed
diagnose           -- Detects known problems in the current environment caused by upgrading DFX, and suggests commands to fix them. These commands can be batch-run automatically via `dfx fix`
fix                -- Applies one-time fixes for known problems in the current environment caused by upgrading DFX. Makes no changes that would not have been suggested by `dfx diagnose`
generate           -- Generate type declarations for canisters from the code in your project
help               -- Print this message or the help of the given subcommand(s)
identity           -- Manages identities used to communicate with the Internet Computer network. Setting an identity enables you to test user-based access controls
info               -- Get information about the replica shipped with dfx, path to networks.json, and network ports of running replica
ledger             -- Ledger commands
new                -- Creates a new project
nns                -- Options for `dfx nns` and its subcommands
ping               -- Pings an Internet Computer network and returns its status
pull               -- Pull canisters upon which the project depends
quickstart         -- Use the `dfx quickstart` command to perform initial one time setup for your identity and/or wallet. This command can be run anytime to repeat the setup process or to be used as an informational command, printing informa
remote             -- Commands used to work with remote canisters
replica            -- Starts a local Internet Computer replica
schema             -- Prints the schema for dfx.json
sns                -- Options for `dfx sns`
start              -- Starts the local replica and a web server for the current project
stop               -- Stops the local network replica
toolchain          -- Manage the dfx toolchains
upgrade            -- Upgrade DFX
wallet             -- Helper commands to manage the user's cycles wallet
```

## bash

Find `dfx.bash` file in the directory, the name of which is the version of `dfx` you're using (e.g., `0.14.0`). It contains the necessary completion function.

Download and put it on your local directory.

Edit your `$HOME/.bashrc` (or whatever you're using to configure your zsh) so that bash automatically loads `dfx.bash` when it launches. Replace "`path/to/dfx.bash`" with the directory you've placed `dfx.bash` on.

```
# `$HOME/.bashrc`

source path/to/dfx.bash
```

Refresh your bash by

```
$ exec $SHELL
```

Try the completions for `dfx` commands! Upon typing `dfx [TAB]`, you will find like this:

```
$ dfx [TAB]

--help                                               fix
--identity                                           generate
--log                                                help
--logfile                                            identity
--provisional-create-canister-effective-canister-id  info
--quiet                                              ledger
--verbose                                            new
--version                                            nns
-V                                                   ping
-h                                                   pull
-q                                                   quickstart
-v                                                   remote
_language-service                                    replica
beta                                                 schema
bootstrap                                            sns
build                                                start
cache                                                stop
canister                                             toolchain
deploy                                               upgrade
diagnose                                             wallet
```

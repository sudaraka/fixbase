# fixbase

`git` subcommand script to find the earliest commit that should be used in
`git rebase --interactive` when squashing fixup commits.

## Installation

Install to default location (`/usr/local/bin`).

```sh
make install
```

Install to customer location (e.g. `/home/<user>/bin`)

```sh
make prefix=$HOME install
```

### Uninstall

```sh
make uninstall
```

or

```sh
make prefix=$HOME uninstall
```

## License

Copyright 2017 Sudaraka Wijesinghe <sudaraka@sudaraka.org>

This program comes with ABSOLUTELY NO WARRANTY;
This is free software, and you are welcome to redistribute it and/or modify it
under the terms of the BSD 2-clause License. See the LICENSE file for more
details.

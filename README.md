# homebrew-tap

Homebrew tap repository for nostalgia.

Install Nostalgia with:

```sh
brew install nostalgia-rs/tap/nostalgia
```

Or add the tap first, then install the formula:

```sh
brew tap nostalgia-rs/tap
brew trust --formula nostalgia-rs/tap/nostalgia
brew install nostalgia
```

## Formula maintenance

The `justfile` provides the common formula checks and local install/test
commands. Run `just` to list them:

```sh
just style
just audit
just install
just test
```

`audit`, `install`, and `test` resolve the formula through Homebrew, so the
tap must be installed and the formula available there.

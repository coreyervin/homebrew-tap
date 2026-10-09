# coreyervin/homebrew-tap

Homebrew formulae for my tools.

```sh
brew tap coreyervin/tap
```

## Formulae

### yolk

Keeps your Mac awake and Slack active while AI agents run, so a long loop
doesn't die when the machine falls asleep.

```sh
brew install coreyervin/tap/yolk
```

Builds the CLI from source — it needs Xcode and macOS 14+. The menu bar app
isn't distributed here yet; it is not notarized, so a downloaded build would
be blocked by Gatekeeper. Build it from a clone with `make app`.

See [coreyervin/yolk](https://github.com/coreyervin/yolk).

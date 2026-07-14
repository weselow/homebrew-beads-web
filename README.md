# homebrew-beads-web

Homebrew tap for [beads-web](https://github.com/weselow/beads-web) — a visual Kanban board and multi-project dashboard for the [beads](https://github.com/steveyegge/beads) task tracker.

## Install

```bash
brew install weselow/beads-web/beads-web
```

Then make sure the Beads CLI (`bd`) is on your `PATH`, run `beads-web`, and open <http://localhost:3008>.

## Updating

```bash
brew update
brew upgrade beads-web
```

## Notes

`Formula/beads-web.rb` is generated from the template at
[`packaging/homebrew/beads-web.rb.tmpl`](https://github.com/weselow/beads-web/blob/main/packaging/homebrew/beads-web.rb.tmpl)
in the main repository and is refreshed automatically on each release by its
`release.yml` workflow. Prefer editing the template upstream over hand-editing the
formula here.

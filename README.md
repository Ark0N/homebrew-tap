# Ark0N's Homebrew tap

## LogoLight

[LogoLight](https://github.com/Ark0N/LogoLight) controls the glowing Apple logo on the back of the
MacBook Pro with PROLED XDR Display: turn it off, dim it, let it breathe or beat like a heart, or
glow with your music, right from the menu bar. Free and open source. More at
[logolight.app](https://logolight.app).

```sh
brew install --cask ark0n/tap/logolight
```

Upgrade with `brew upgrade --cask logolight`. To remove it along with its settings (and the
password-free rule, if you turned on Disable Password), use `brew uninstall --zap logolight`.

The cask follows LogoLight's GitHub releases on its own: a daily workflow points it at the newest
one, and pushes that only after `brew audit` and a real install pass
(`.github/workflows/logolight.yml`).

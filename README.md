# NixOS configuration for my laptop.

## Structure
- `modules/`
- `host.example.nix`
- `hardware-configuration.nix` — machine-specific hardware config generated at install
- `flake.nix`
- `flake.lock`

## Usage
1. Clone this repo.
```
git clone https://github.com/DhawalKachhwaha/dotfiles.git
```
2. `cd dotfiles`
3. `cp host.example.nix host.nix`
    - edit host.nix and fill in your info
4. `sudo nixos-rebuild switch --flake .`


## System

- **OS**: Fedora Linux (Sway Spin)
- **Package Management**: System packages via DNF5, with additional packages through Nix

## Important Notes

The clipboard management tools (`cliphist` and `wl-clipboard`) are installed through the Nix package manager, as they're not available in Fedora's default repositories. For Nix packages to function properly on Fedora, SELinux must be configured in permissive mode.

## Other utilities

* **mupdf** for PDF files.
* **imv** for images.
* **mpv** for videos.

INTR-BZTE-0S is a spin off of Linux Bazzite standing formally for Enter to Bazzite Operating System

This version has support for Gaming beginners installing Roblox, Bottles, Steam, Discord, and removing various KDE Bazzite bloatware minimizing resource usage, with direct out of box setting Firefox from Flatpak as default browser removing the first time pop-up many experience on first boot of Firefox.

Based off of Linux KDE Bazzite which is based off of Fedora Immutable Atomic system which does not allow direct modification to system files unlike many distros, but has the best support for high performance. Pure performance on budget systems, recommended for beginner-intermediate tech problem-solvers.

# INTR-Bazzite-0S &nbsp; [![bluebuild build badge](https://github.com/sj7449/intr-bazzite-0s/actions/workflows/build.yml/badge.svg)](https://github.com/sj7449/intr-bazzite-0s/actions/workflows/build.yml)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

After setup, it is recommended you update this README to describe your custom image.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/sj7449/intr-bazzite-0s:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/sj7449/intr-bazzite-0s:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/sj7449/intr-bazzite-0s
```

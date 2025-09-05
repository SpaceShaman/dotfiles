# My amazing dotfiles

This is my personal dotfiles repository.

## Setup

> **Note:** The `setup.sh` script was tested only on Debian 13 (Trixie). There is no guarantee it will work correctly on other Linux distributions.

### Clone this repository to your home directory

```bash
git clone https://github.com/SpaceShaman/dotfiles.git ~/.dotfiles
```

### Enter to the setup directory and run setup script

```bash
cd ~/.dotfiles/setup
./setup.sh
```

Optionally, you can run the setup script with the `-y` flag to skip the confirmation prompts and automatically install all the required packages.

```bash
./setup.sh -y
```

### Update dotfiles

To update your dotfiles to the latest version, run the following command:

```bash
cd ~/.dotfiles/setup
git pull
```

### Uninstall dotfiles

To uninstall your dotfiles, run the following command:

```bash
cd ~/.dotfiles/setup
./setup.sh -u
```

## License

This project is licensed under the MIT License.

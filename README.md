# local-dev-setup-win
Setup a Windows Machine with Chocolatey + Git Bash scripts

## Preconditions

Download a VirtualBox image of [Windows 10 from Microsoft](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/)

Install all the Windows updates and do the reboots. I also added 7zip, because my target system will come with it pre-installed. Open in IE11: `https://boxstarter.org/package/7zip`

## Usage

Install the basic applications with opening this link in IE11:

```
https://boxstarter.org/package/git,jetbrainstoolbox,intellijidea-ultimate,docker-desktop
```

Fastlane for testing (just git bash): https://boxstarter.org/package/git

Run in Git Bash:

```bash
git clone https://github.com/newur/local-dev-setup-win.git \
  && cd local-dev-setup-win
```
<!-- # TODO add aliases to run dev launcher to .bashrc
# aliases and JIRA-git-commit-msg-function
# run before sdkman to not overwrite .bashrc -->
Run in Git **Bash as Administrator**:

```bash
cp $(which 7z) /c/ProgramData/chocolatey/bin/zip.exe
```

```bash
cp bashrc ~/.bashrc \
  && cp inputrc ~/.inputrc \
\
&& curl -s "https://get.sdkman.io" | bash \
  && source ~/.bashrc \
  && sdk env install
```

```bash
./gitSetup.sh \
  && cp pre-push ~/.config/git/template/hooks/ \
  && ./createSshKey.sh
```

```bash
# TODO checkout verticals and other esp projects
./cloneGitRepos.sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# TODO run taiko to create a valid customer gitSetup


# more or less done: run taiko to create a BCM
```
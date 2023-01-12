CURRENT_OS="OSX" #CENTOS, UBUNUTU are other valid options
function findCurrentOSType() {
    echo "Finding the current os type"
    echo
    osType=$(uname)
    case "$osType" in
    "Darwin")
        {
            echo "Running on Mac OSX."
            CURRENT_OS="OSX"
        }
        ;;
    "Linux")
        {
            # If available, use LSB to identify distribution
            if [ -f /etc/lsb-release -o -d /etc/lsb-release.d ]; then
                DISTRO=$(gawk -F= '/^NAME/{print $2}' /etc/os-release)
            else
                DISTRO=$(ls -d /etc/[A-Za-z]*[_-][rv]e[lr]* | grep -v "lsb" | cut -d'/' -f3 | cut -d'-' -f1 | cut -d'_' -f1)
            fi
            CURRENT_OS=$(echo $DISTRO | tr 'a-z' 'A-Z')
        }
        ;;
    *)
        {
            echo "Unsupported OS, exiting"
            exit
        }
        ;;
    esac
}

if ! type zsh >/dev/null; then
    if CURRENT_OS="Linux"; then
        sudo apt-get install zsh
    else
        exit
    fi
fi

if ! type wget >/dev/null; then
    exit
fi

if [[ -z "${ZSH}" ]]; then
    # Install on-my-zsh
    sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi

# Install antigen
curl -L git.io/antigen >${ANTIGEN_PATH}/antigen.zsh
# Get zshrc
wget https://raw.githubusercontent.com/paprikaw/rc_files/main/.zshrc >$HOME/.zshrc

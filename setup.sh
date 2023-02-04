#!/bin/bash

NONE='NONE'
TRUE='0'
FALSE='-1'

RASPBERRYPI=$FALSE
if [ -f /proc/device-tree/model ]; then
    RASPBERRYPI=$TRUE
fi

function MainArgparseHelp {
cat << EOS >&2
Usage: $0

IpSet ipset Options: 
    linux ip 固定用オプション
        --ip4           IP4アドレス指定 (defult: None)
        --ip6           IP6アドレス指定 (defult: None)
        --mask          マスク指定 (defult: None)
        --router        ルータ指定 (defult: None)
        --domain-name   ドメイン指定 (defult: None)
Main Options:
    -h, --help
EOS
}

function IPSET () {
    
    IP4=$NONE
    IP6=$NONE
    MASK=$NONE
    ROUTER=$NONE
    DOMAIN_NAME=$NONE
    
    while (( $# > 0)); do
        case $1 in 
            --ip4)
                    ;;
            --ip6)
                    ;;
            --mask)
                    ;;
            --router)
                    ;;
            --domain-name)
                    ;;
            -h | --help)
                    ;;
            *)
                    ;;
        esac
        shift
    done

    # if [[ $RASPBERRYPI = $TRUE ]]; then
    #     # Raspberry IP
    # else
    #     # Other

    # fi

    return 0
}

while (( $# > 0 )); do
    case $1 in
        --python)
            PYTHON_INSTALL=$TRUE
            PYTHON_VERSION=$NONE
            if [[ ! $2 =~ "-" ]]; then
                shift
                PYTHON_VERSION=$1
            fi
            ;;
        --docker)
            DOCKER_INSTALL=$TRUE
            DOCKER_VERSION=$NONE
            if [[ ! $2 =~ "-" ]]; then
                shift
                DOCKER_VERSION=$1
            fi
            ;;
        --pycharm)
            PYCHARM_INSTALL=$TRUE
            PYCHARM_VERSION=2022.2.1
            if [[ ! $2 =~ "-" ]]; then
                shift
                PYCHARM_VERSION=$1
            fi
            ;;
        --vscode)
            VSCODE_INSTALL=$TRUE
            VSCODE_VERSION=$NONE
            if [[ ! $2 =~ "-" ]]; then
                shift
                PYCHARM_VERSION=$1
            fi
            ;;
        --anaconda)
            ANACONDA_INSTALL=$TRUE
            ANACONDA_VERSION=$NONE
            if [[ ! $2 =~ "-" ]]; then
                shift
                ANACONDA_VERSION=$1
            fi
            ;;
        --docker-nvidia)
            DOCKER_NVIDIA_INSTALL=$TRUE
            DOCKER_NVIDIA_VERSION=$NONE
            if [[ ! $2 =~ "-" ]]; then
                shift
                DOCKER_NVIDIA_VERSION=$1
            fi
            ;;
        ipset)
            ;;

        -h | --help | *)
            MainArgparseHelp
            ;;
    esac
    shift
done


# # PYTHON INSTALL
# if [[ $PYTHON_INSTALL = $TRUE ]]; then
#     if [[ $PYTHON_VERSION = $NONE ]]; then
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) 
#     else
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) $PYTHON_VERSION
#     fi
# fi

# # PYCHARM INSTALL
# if [[ $PYCHARM_INSTALL = $TRUE ]]; then
#     if [[ $PYCHARM_VERSION = $NONE ]]; then
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) 
#     else
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) $PYCHARM_VERSION
#     fi
# fi

# # DOCKER INSTALL
# if [[ $DOCKER_INSTALL = $TRUE ]]; then
#     if [[ ! $RASPBERRYPI = TRUE ]];
#         if [[ $DOCKER_VERSION = $NONE ]]; then
#             # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) 
#         else
#             # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) $DOCKER_VERSION
#         fi
#     else 
#         if [[ $DOCKER_VERSION = $NONE ]]; then
#             # bash <(curl https://raw.githubusercontent.com/skrjtech/archives/main/installer/raspberypi-docker.sh)
#         else
#             # bash <(curl https://raw.githubusercontent.com/skrjtech/archives/main/installer/raspberypi-docker.sh) $DOCKER_VERSION
#         fi
#     fi
# fi

# # DOCKER NVIDIA INSTALL
# if [[ $DOCKER_NVIDIA_INSTALL = $TRUE ]]; then
#     if [[ $DOCKER_NVIDIA_VERSION = $NONE ]]; then
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) 
#     else
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) $DOCKER_NVIDIA_VERSION
#     fi
# fi

# # VSCODE INSTALL
# if [[ $VSCODE_INSTALL = $TRUE ]]; then
#     if [[ $VSCODE_VERSION = $NONE ]]; then
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) 
#     else
#         # bash <(. https://raw.githubusercontent.com/skrjtech/linux-setup/main/installer/python.sh) $VSCODE_NVIDIA_VERSION
#     fi
# fi
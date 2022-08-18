# Shell script to manage hardening scripts for Amazon Linux2, Centos7, Ubuntu 18.04, Ubuntu 20.04, and Ubuntu 20.10

# Check if the script is being run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Check if the script is being run on a supported OS
if [ -f /etc/os-release ]; then
   . /etc/os-release
   if [ "$ID" != "amzn" ] && [ "$ID" != "centos" ] && [ "$ID" != "ubuntu" ] && [ "$ID" != "debian" ] && [ "$ID" != "rhel" ] && [ "$ID" != "fedora" ] && [ "$ID" != "amazonlinux" ] && [ "$ID" != "alpine" ] && [ "$ID" != "suse" ] && [ "$ID" != "opensuse" ] && [ "$ID" != "opensuseleap" ] && [ "$ID" != "opensuse-tumbleweed" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles" ] && [ "$ID" != "sled" ] && [ "$ID" != "suse" ] && [ "$ID" != "sles"


        echo "This script is not supported on this OS" 1>&2
        exit 1
     fi

        if [ "$ID" = "amzn" ]; then
            echo "This script is not supported on this OS" 1>&2
            exit 1
        fi
fi

# If the script is being run on a supported OS, run the corresponding hardening script
if [ "$ID" = "centos" ]; then
    bash /opt/hardening/centos/hardening.sh
elif [ "$ID" = "ubuntu" ]; then
    bash /opt/hardening/ubuntu/hardening.sh
elif [ "$ID" = "debian" ]; then
    bash /opt/hardening/debian/hardening.sh
elif [ "$ID" = "rhel" ]; then
    bash /opt/hardening/rhel/hardening.sh
elif [ "$ID" = "fedora" ]; then
    bash /opt/hardening/fedora/hardening.sh
elif [ "$ID" = "amazonlinux" ]; then
    bash /opt/hardening/amazonlinux/hardening.sh
elif [ "$ID" = "alpine" ]; then
    bash /opt/hardening/alpine/hardening.sh
elif [ "$ID" = "suse" ]; then
    bash /opt/hardening/suse/hardening.sh
elif [ "$ID" = "opensuse" ]; then
    bash /opt/hardening/opensuse/hardening.sh
elif [ "$ID" = "opensuseleap" ]; then
    bash /opt/hardening/opensuseleap/hardening.sh
elif [ "$ID" = "opensuse-tumbleweed" ]; then
    bash /opt/hardening/opensuse-tumbleweed/hardening.sh
elif [ "$ID" = "sles" ]; then
    bash /opt/hardening/sles/hardening.sh
elif [ "$ID" = "sled" ]; then
    bash /opt/hardening/sled/hardening.sh
fi

exit 0
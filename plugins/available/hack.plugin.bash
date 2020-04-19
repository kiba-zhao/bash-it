cite about-plugin
about-plugin 'hack helper functions'

function scanHost() {
  about 'explore hosts with nmap scan'
  group 'hack_explore'
  # param '1: host'
  # param '2: hostname'
  # param '3: user'

  echo 'begin'
  # local TEST_IP=`ip -4 address | grep -m 1 -E -o '[^0-9]192\.168\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-4]|2[0-4][0-9]|[01]?[0-9][0-9]?)[^0-9]' |awk '{print substr($0,2,length($0)-2)}'`
  local opt
  local OPTIND=1
  local OPTS="-T4 --exclude 192.168.2.108"
  while getopts "l" opt; do
    case $opt in
      l)
        OPTS="$OPTS -sN"
        ;;
    esac
    echo "after $OPTS"
    shift $((OPTIND-1))
  done
  echo "args: ${@-192.168.2.1/24}"
  sudo nmap $OPTS ${@-"192.168.2.1/24"};
  # getopt
  # nmap 192.168.43.1/24 -sL -S 192.168.43.100
}

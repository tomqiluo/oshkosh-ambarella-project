set -e

if grep -v '^#' /etc/fstab | grep -q cgroup; then
        echo 'cgroups mounted from fstab, not mounting /sys/fs/cgroup'
        exit 0
fi

if [ ! -e /proc/cgroups ]; then
        exit 0
fi

if [ ! -d /sys/fs/cgroup ]; then
        exit 0
fi

# mount /sys/fs/cgroup if not already done
if ! mountpoint -q /sys/fs/cgroup; then
        mount -t tmpfs -o uid=0,gid=0,mode=0755 cgroup /sys/fs/cgroup
fi

cd /sys/fs/cgroup

# get/mount list of enabled cgroup controllers
for sys in $(awk '!/^#/ { if ($4 == 1) print $1 }' /proc/cgroups); do
        mkdir -p $sys
        if ! mountpoint -q $sys; then
                if ! mount -n -t cgroup -o $sys cgroup $sys; then
                        rmdir $sys || true
                fi
        fi
done


exit 0


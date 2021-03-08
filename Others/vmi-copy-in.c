#include <stdio.h>
#include <guestfs.h>

int main() {
    guestfs_h *g = guestfs_create();
    guestfs_launch(g);
    guestfs_add_domain(g, "centos7.0-amd64");
    guestfs_copy_in(g, "/etc/resolv.conf", "/etc");
    guestfs_shutdown(g);
    guestfs_close(g);
    return 0;
}

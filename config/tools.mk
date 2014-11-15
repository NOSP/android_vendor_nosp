# Command line tools

PRODUCT_PACKAGES += \
    bash \
    busybox \
    ca-bundle \
    curl \
    dumplogcat \
    e2fsck \
    mke2fs \
    resize2fs \
    rsync \
    scp \
    sftp \
    ssh \
    ssh-keygen \
    sshd \
    sshd_config \
    sshd_motd \
    start-ssh \
    tune2fs \
    vim \
    vimrc \
    wget \
    wgetrc

# Custom init script
PRODUCT_COPY_FILES += \
    $(SRC_NOSP_DIR)/prebuilt/common/etc/init.nosp.rc:root/init.nosp.rc

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    $(SRC_NOSP_DIR)/prebuilt/common/bin/sysinit:system/bin/sysinit \
    $(SRC_NOSP_DIR)/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    $(SRC_NOSP_DIR)/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl 


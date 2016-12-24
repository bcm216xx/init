# init script tests
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/root/fstab.zram:root/fstab.zram \
    $(LOCAL_PATH)/root/init.rhea.rc:/root/init.rhea.rc

# Device specific init scripts
ifneq ($(TARGET_DEVICE),corsica)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/root/fstab.rhea:/root/fstab.rhea_ss_corsica \
    $(LOCAL_PATH)/root/init.recovery.rhea_ss_common.rc:/root/init.recovery.rhea_ss_corsica.rc \
    $(LOCAL_PATH)/root/init.rhea_ss_corsica.rc:/root/init.rhea_ss_corsica.rc \
    $(LOCAL_PATH)/root/ueventd.rhea.rc:/root/ueventd.rhea_ss_corsica.rc
else 
ifneq ($(TARGET_DEVICE),nevisp)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/root/fstab.rhea:/root/fstab.rhea_ss_nevisp \
    $(LOCAL_PATH)/root/init.recovery.rhea_ss_common.rc:/root/init.recovery.rhea_ss_nevisp.rc \
    $(LOCAL_PATH)/root/init.rhea_ss_nevisp.rc:/root/init.rhea_ss_nevisp.rc \
    $(LOCAL_PATH)/root/ueventd.rhea.rc:/root/ueventd.rhea_ss_nevisp.rc
else 
ifneq ($(TARGET_DEVICE),ivoryss)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/root/fstab.rhea:/root/fstab.rhea_ss_ivoryss \
    $(LOCAL_PATH)/root/init.recovery.rhea_ss_common.rc:/root/init.recovery.rhea_ss_ivoryss.rc \
    $(LOCAL_PATH)/root/init.rhea_ss_ivoryss.rc:/root/init.rhea_ss_ivoryss.rc \
    $(LOCAL_PATH)/root/ueventd.rhea.rc:/root/ueventd.rhea_ss_ivoryss.rc
  endif
 endif
endif

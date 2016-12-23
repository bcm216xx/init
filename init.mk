# init script tests
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.zram:root/fstab.zram \
    $(LOCAL_PATH)/init.recovery.rhea_ss-common.rc:/root/init.recovery.rhea_ss-common.rc \
    $(LOCAL_PATH)/init.rhea.rc:/root/init.rhea.rc

# Device specific init script
ifeq ($(PRODUCT_DEVICE),corsica)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.rhea:/root/fstab.rhea_ss_corsica \
    $(LOCAL_PATH)/init.rhea_ss_corsica.rc:/root/init.rhea_ss_corsica.rc \
    $(LOCAL_PATH)/ueventd.rhea.rc:/root/ueventd.rhea_ss_corsica.rc
else 
ifeq ($(PRODUCT_DEVICE),nevisp)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.rhea:/root/fstab.rhea_ss_nevisp \
    $(LOCAL_PATH)/init.rhea_ss_nevisp.rc:/root/init.rhea_ss_nevisp.rc \
    $(LOCAL_PATH)/ueventd.rhea.rc:/root/ueventd.rhea_ss_nevisp.rc
else 
ifeq ($(PRODUCT_DEVICE),ivoryss)
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.rhea:/root/fstab.rhea_ss_ivoryss \
    $(LOCAL_PATH)/init.rhea_ss_ivoryss.rc:/root/init.rhea_ss_ivoryss.rc \
    $(LOCAL_PATH)/ueventd.rhea.rc:/root/ueventd.rhea_ss_ivoryss.rc
  endif
 endif
endif

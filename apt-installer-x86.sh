#make folder for instalation
[ ! -d "opt/plcnext/apt_installer_x86" ] && mkdir /opt/plcnext/apt_installer_x86

#go to folder
cd /opt/plcnext/apt_installer

sed -i -e 's/FAIL_DELAY/#FAIL_DELAY/' /etc/login.defs

#begin install adduser + dependencies
wget http://ftp.de.debian.org/debian/pool/main/g/gcc-10/gcc-10-base_10.2.1-6_i386.deb
dpkg -i gcc-10-base_10.2.1-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/g/gcc-10/libgcc-s1_10.2.1-6_i386.deb
dpkg --force-all -i libgcc-s1_10.2.1-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libx/libxcrypt/libcrypt1_4.4.18-4_i386.deb
dpkg --force-all -i libcrypt1_4.4.18-4_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/g/glibc/libc6_2.31-13_i386.deb
dpkg --force-all -i libc6_2.31-13_i386.deb


dpkg --configure libgcc-s1_10.2.1-6_i386
dpkg --configure libcrypt1_4.4.18-4_i386
#pause install adduser


#begin install libc-bin to mitigate errors
wget http://ftp.de.debian.org/debian/pool/main/g/glibc/libc-bin_2.31-13_i386.deb
dpkg -i libc-bin_2.31-13_i386.deb
#end install libc-bin to mitigate errors

#continue install adduser
wget http://ftp.de.debian.org/debian/pool/main/e/e2fsprogs/libcom-err2_1.46.2-2_i386.deb
dpkg -i libcom-err2_1.46.2-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/k/krb5/libkrb5support0_1.18.3-6_i386.deb
dpkg -i libkrb5support0_1.18.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/k/krb5/libk5crypto3_1.18.3-6_i386.deb
dpkg -i libk5crypto3_1.18.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/k/keyutils/libkeyutils1_1.6.1-2_i386.deb
dpkg -i libkeyutils1_1.6.1-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/b/bzip2/libbz2-1.0_1.0.8-4_i386.deb
dpkg -i libbz2-1.0_1.0.8-4_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/x/xz-utils/liblzma5_5.2.5-2_i386.deb
dpkg -i liblzma5_5.2.5-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/x/xz-utils/liblzma5_5.2.5-2_i386.deb
dpkg -i liblzma5_5.2.5-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/p/pcre2/libpcre2-8-0_10.36-2_i386.deb
dpkg -i libpcre2-8-0_10.36-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libs/libselinux/libselinux1_3.1-3_i386.deb
dpkg -i libselinux1_3.1-3_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/z/zlib/zlib1g_1.2.11.dfsg-2_i386.deb
dpkg -i zlib1g_1.2.11.dfsg-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/a/acl/libacl1_2.2.53-10_i386.deb
dpkg -i libacl1_2.2.53-10_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/t/tar/tar_1.34+dfsg-1_i386.deb
dpkg -i tar_1.34+dfsg-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/d/dpkg/dpkg_1.20.9_i386.deb
dpkg -i dpkg_1.20.9_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/p/perl/perl-base_5.32.1-4_i386.deb
dpkg -i perl-base_5.32.1-4_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/d/debconf/debconf_1.5.77_all.deb
dpkg -i debconf_1.5.77_all.deb


wget http://ftp.de.debian.org/debian/pool/main/o/openssl/libssl1.1_1.1.1k-1_i386.deb
dpkg -i libssl1.1_1.1.1k-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/k/krb5/libkrb5-3_1.18.3-6_i386.deb
dpkg -i libkrb5-3_1.18.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/k/krb5/libgssapi-krb5-2_1.18.3-6_i386.deb
dpkg -i libgssapi-krb5-2_1.18.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libt/libtirpc/libtirpc-common_1.3.1-1_all.deb
dpkg -i libtirpc-common_1.3.1-1_all.deb


wget http://ftp.de.debian.org/debian/pool/main/libt/libtirpc/libtirpc3_1.3.1-1_i386.deb
dpkg -i libtirpc3_1.3.1-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libn/libnsl/libnsl2_1.3.0-2_i386.deb
dpkg -i libnsl2_1.3.0-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/a/audit/libaudit-common_3.0-2_all.deb
dpkg -i libaudit-common_3.0-2_all.deb


wget http://ftp.de.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng0_0.7.9-2.2+b1_i386.deb
dpkg -i libcap-ng0_0.7.9-2.2+b1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/a/audit/libaudit1_3.0-2_i386.deb
dpkg -i libaudit1_3.0-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/p/pam/libpam0g_1.4.0-9_i386.deb
dpkg -i libpam0g_1.4.0-9_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.8_i386.deb
dpkg -i libdb5.3_5.3.28+dfsg1-0.8_i386.deb
 

wget http://ftp.de.debian.org/debian/pool/main/p/pam/libpam-modules-bin_1.4.0-9_i386.deb
dpkg -i libpam-modules-bin_1.4.0-9_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libt/libtirpc/libtirpc3_1.3.1-1_i386.deb
dpkg -i libtirpc3_1.3.1-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/p/pam/libpam-modules_1.4.0-9_i386.deb
dpkg -i libpam-modules_1.4.0-9_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libs/libsemanage/libsemanage-common_3.1-1_all.deb
dpkg -i libsemanage-common_3.1-1_all.deb


wget http://ftp.de.debian.org/debian/pool/main/libs/libsepol/libsepol1_3.1-1_i386.deb
dpkg -i libsepol1_3.1-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libs/libsemanage/libsemanage1_3.1-1+b2_i386.deb
dpkg -i libsemanage1_3.1-1+b2_i386.deb

sed -i '/shadow:x:42:/d' /etc/group

wget http://ftp.de.debian.org/debian/pool/main/s/shadow/passwd_4.8.1-1_i386.deb
dpkg -i passwd_4.8.1-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/a/adduser/adduser_3.118_all.deb
dpkg -i adduser_3.118_all.deb
#end install adduser


#begin install init-system-helpers
wget http://ftp.de.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.60_all.deb
dpkg -i init-system-helpers_1.60_all.deb
#end install init-system-helpers


#begin install keyring
wget http://ftp.de.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2021.1.1_all.deb
dpkg -i debian-archive-keyring_2021.1.1_all.deb
#end install keyring


#begin install gpgv + dependencies
wget http://ftp.de.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error0_1.38-2_i386.deb
dpkg -i libgpg-error0_1.38-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.7-6_i386.deb
dpkg -i libgcrypt20_1.8.7-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/g/gnupg2/gpgv_2.2.27-2_i386.deb
dpkg -i gpgv_2.2.27-2_i386.deb
#end install gpgv


#begin install libapt-pkg + dependencies
wget http://ftp.de.debian.org/debian/pool/main/l/lz4/liblz4-1_1.9.3-2_i386.deb
dpkg -i liblz4-1_1.9.3-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/g/gcc-10/libstdc++6_10.2.1-6_i386.deb
dpkg -i libstdc++6_10.2.1-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libz/libzstd/libzstd1_1.4.8+dfsg-2.1_i386.deb
dpkg -i libzstd1_1.4.8+dfsg-2.1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/s/systemd/libsystemd0_247.3-6_i386.deb
dpkg -i libsystemd0_247.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/s/systemd/libudev1_247.3-6_i386.deb
dpkg -i libudev1_247.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/x/xxhash/libxxhash0_0.8.0-2_i386.deb
dpkg -i libxxhash0_0.8.0-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/a/apt/libapt-pkg6.0_2.2.4_i386.deb
dpkg -i libapt-pkg6.0_2.2.4_i386.deb
#end install libapt-pkg


#begin install libgnutils + dependencies
wget http://ftp.de.debian.org/debian/pool/main/n/nettle/libnettle8_3.7.3-1_i386.deb
dpkg -i libnettle8_3.7.3-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/g/gmp/libgmp10_6.2.1+dfsg-1_i386.deb
dpkg -i libgmp10_6.2.1+dfsg-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/n/nettle/libhogweed6_3.7.3-1_i386.deb
dpkg -i libhogweed6_3.7.3-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libu/libunistring/libunistring2_0.9.10-4_i386.deb
dpkg -i libunistring2_0.9.10-4_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libi/libidn2/libidn2-0_2.3.0-5_i386.deb
dpkg -i libidn2-0_2.3.0-5_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libf/libffi/libffi7_3.3-6_i386.deb
dpkg -i libffi7_3.3-6_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/p/p11-kit/libp11-kit0_0.23.22-1_i386.deb
dpkg -i libp11-kit0_0.23.22-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.16.0-2_i386.deb
dpkg -i libtasn1-6_4.16.0-2_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/g/gnutls28/libgnutls30_3.7.1-5_i386.deb
dpkg -i libgnutls30_3.7.1-5_i386.deb
#end install libgnutils


#begin install libseccomp2
wget http://ftp.de.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_i386.deb
dpkg -i libseccomp2_2.5.1-1_i386.deb
#end install libseccomp2


#begin install CA-certificates + dependency
wget http://ftp.de.debian.org/debian/pool/main/o/openssl/openssl_1.1.1k-1_i386.deb
dpkg -i openssl_1.1.1k-1_i386.deb


wget http://ftp.de.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20210119_all.deb
dpkg -i ca-certificates_20210119_all.deb
#end install CA-certificates


#begin install APT
wget http://ftp.de.debian.org/debian/pool/main/a/apt/apt_2.2.4_i386.deb
dpkg -i apt_2.2.4_i386.deb
#end install APT


#add the libraries for APT
echo "deb [trusted=yes] http://deb.debian.org/debian bullseye main contrib non-free
deb-src [trusted=yes] http://deb.debian.org/debian bullseye main contrib non-free

deb [trusted=yes] http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
deb-src [trusted=yes] http://deb.debian.org/debian-security/ bullseye-security main contrib non-free

deb [trusted=yes] http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src [trusted=yes] http://deb.debian.org/debian bullseye-updates main contrib non-free" > /etc/apt/sources.list


#update the package lists in the PLCnext
apt update

#show the avalable disk space on the plc
df -h

exit 1
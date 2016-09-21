SUMMARY = "Adds files to the default file system"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://ros.sh"

do_install_append() {
	install -d ${D}${sysconfdir}/profile.d/
	install -m 0644 ${WORKDIR}/ros.sh ${D}${sysconfdir}/profile.d/ros.sh
}

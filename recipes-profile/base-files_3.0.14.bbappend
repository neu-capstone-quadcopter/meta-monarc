SUMMARY = "Adds files to the default file system"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://ros.sh \
	    file://rosmonarc.service \
            file://monarc.launch \
            file://monarc_no_camera.launch"

do_install_append() {
	install -d ${D}${sysconfdir}/profile.d/
	install -m 0644 ${WORKDIR}/ros.sh ${D}${sysconfdir}/profile.d/ros.sh

	install -d ${D}/home/root
	install -m 0644 ${WORKDIR}/monarc.launch ${D}/home/root/monarc.launch
	install -m 0644 ${WORKDIR}/monarc_no_camera.launch ${D}/home/root/monarc_no_camera.launch

	install -d ${D}${systemd_unitdir}/system/
	install -m 0644 ${WORKDIR}/rosmonarc.service ${D}${systemd_unitdir}/system/rosmonarc.service
}

inherit systemd
PACKAGES += "${PN}-systemd"
SYSTEMD_PACKAGES = "${PN}-systemd"
SYSTEMD_SERVICE = "rosmonarc.service"

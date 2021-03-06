################################################################################
#
# python-falcon
#
################################################################################

PYTHON_FALCON_VERSION = 3.0.0
PYTHON_FALCON_SOURCE = falcon-$(PYTHON_FALCON_VERSION).tar.gz
PYTHON_FALCON_SITE = https://files.pythonhosted.org/packages/f1/59/2748d63922a46e040be06cd175a6242a33ade7839aac37f441544bb6d651
PYTHON_FALCON_SETUP_TYPE = setuptools
PYTHON_FALCON_LICENSE = Apache-2.0
PYTHON_FALCON_LICENSE_FILES = LICENSE

ifeq ($(BR2_PACKAGE_HOST_PYTHON_CYTHON),y)
PYTHON_FALCON_DEPENDENCIES += host-python-cython
endif

$(eval $(python-package))

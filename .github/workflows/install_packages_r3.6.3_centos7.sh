#!/bin/sh

# Get software
wget -nv  https://github.com/Open-Systems-Pharmacology/rClr/releases/download/v0.8.3_Linux/rClr_0.8.3_CentOS7.tar.gz /tmp_setup/
wget -nv  https://github.com/Open-Systems-Pharmacology/OSPSuite-R/releases/download/v10.0.25/ospsuite_10.0.25_centOS7.tar.gz /tmp_setup/
wget -nv  https://github.com/Open-Systems-Pharmacology/TLF-Library/releases/download/v1.2.4/tlf_1.2.4.tar.gz /tmp_setup/
wget -nv  https://github.com/Open-Systems-Pharmacology/OSPSuite.ReportingEngine/releases/download/v1.2.40/ospsuite.reportingengine_1.2.40.tar.gz /tmp_setup/

# Install packages
R CMD INSTALL /tmp_setup/rClr_0.8.3_CentOS7.tar.gz && \
R CMD INSTALL /tmp_setup/tlf_1.2.4.tar.gz --install-tests && \
R CMD INSTALL /tmp_setup/ospsuite_10.0.25_centOS7.tar.gz --install-tests && \
R CMD INSTALL /tmp_setup/ospsuite.reportingengine_1.2.40.tar.gz --install-tests

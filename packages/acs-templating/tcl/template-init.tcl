# Initialization of ArsDigita Templating System as a Tcl-only module

# Copyright (C) 1999-2000 ArsDigita Corporation
# Author: Karl Goldstein (karlg@arsdigita.com)
# $Id: template-init.tcl,v 1.4.2.2 2022/08/11 11:00:48 gustafn Exp $

# This is free software distributed under the terms of the GNU Public
# License.  Full text of the license is available from the GNU Project:
# http://www.fsf.org/copyleft/gpl.html

if { [parameter::get_from_package_key \
          -package_key acs-templating \
          -parameter ShowCompiledTemplatesP \
          -default 0] } {
  ad_register_filter postauth GET *.cmp template::cmp_page_filter
}

if { [parameter::get_from_package_key \
          -package_key acs-templating \
          -parameter ShowDataDictionariesP \
          -default 0] } {
  ad_register_filter postauth GET *.dat template::dat_page_filter
  ad_register_filter postauth GET *.frm template::frm_page_filter
}

# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:

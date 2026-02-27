ad_library {
    Automated tests for the ref-countries package.

    @author Héctor Romojaro <hector.romojaro@gmail.com>
    @creation-date 2020-08-20
    @cvs-id $Id: ref-countries-procs.tcl,v 1.1.2.1 2020/08/20 13:08:33 hectorr Exp $
}

aa_register_case -procs {
        ref_countries::get_country_code
    } -cats {
        api
        production_safe
    } get_country_code {
        Test ref_countries::get_country_code proc.
} {
    #
    # Check a list of countries
    #
    set countries {England GB "Great Britain" GB Spain ES "Côte d'Ivoire" CI "Western Sahara" EH}
    dict for {country code} $countries {
        aa_equals "Country code for $country:" "[ref_countries::get_country_code -country $country]" "$code"
    }
}

# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:

# /packages/general-comments/www/comment-edit.tcl

ad_page_contract {
    Displays a form for editing a comment
    
    @param comment_id The id of the comment to edit
    
    @author Phong Nguyen (phong@arsdigita.com)
    @author Pascal Scheffers (pascal@scheffers.net)
    @creation-date 2000-10-12
    @cvs-id $Id: comment-edit.tcl,v 1.9.2.1 2022/03/16 13:09:26 antoniop Exp $
} { 
    comment_id:naturalnum,notnull
    { revision_id:naturalnum {} }
    { return_url:localurl {} }
}

# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:

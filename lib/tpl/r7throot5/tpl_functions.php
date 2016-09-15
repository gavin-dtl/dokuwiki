<?php
/**
 * functions for r7throot3 template
 *
 * License: GPL 2 (http://www.gnu.org/licenses/gpl.html)
 *
 * @author:         Michael Klier <chi@chimeric.de>
 * @homepage:       http://www.chimeric.de
 * @modified-by:    Xan <DXpublica@telefonica.net>
 * @modified-by:    Oscar M. Lage <r0sk10@gmail.com>
 */

require_once('conf.php');

/**
 * fetches the page menu1 and displays it
 *
 * @author Oscar M. Lage <r0sk10@gmail.com>
 */
function tpl_mypage($peich)
{
    global $conf, $ID, $REV, $INFO;
    print p_wiki_xhtml($peich, '', false);
}

/**
 * fetches the sidebar-pages and displays the sidebar
 *
 * @author Michael Klier <chi@chimeric.de>
 */
function tpl_sidebar() {
    global $conf, $ID, $REV, $INFO, $lang;

    $svID  = $ID;
    $svREV = $REV;

        $nom = $ID.'_'.$conf['sidebar-theme']['sidebar_pagename'];
        $default_nom = $conf['sidebar-theme']['default_sidebar_name'];
        $other = $INFO[namespace].'_'.$conf['sidebar-theme']['sidebar_pagename'];
        
    if (file_exists(wikiFN($nom)))
      {
        echo p_sidebar_xhtml($nom);
      }
    else
      {
        if (file_exists(wikiFN($other)))
        {
           print p_sidebar_xhtml($other);
        }
        else
        {
					if (file_exists(wikiFN($default_nom)))
					{
						print p_sidebar_xhtml($default_nom);
					}
					else
					{
						print '&nbsp;';
	
					}
        }
       }

    $ID = $svID;
    $REV = $svREV;

}

/**
 * removes the TOC of the sidebar-pages and shows a edit-button if user has enough rights
 * 
 * @author Michael Klier <chi@chimeric.de>
 */
function p_sidebar_xhtml($Sb) {
    $data = p_wiki_xhtml($Sb,'',false);
    if(auth_quickaclcheck($Sb) >= AUTH_EDIT) {
        $data .= '<div class="secedit">'.html_btn('secedit',$Sb,'',array('do'=>'edit','rev'=>'','post')).'</div>';
    }
    return preg_replace('/<div class="toc">.*?(<\/div>\n<\/div>)/s', '', $data);
}

?>
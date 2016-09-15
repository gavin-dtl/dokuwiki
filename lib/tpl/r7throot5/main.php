<?php if (isset($DOKU_TPL)==FALSE) $DOKU_TPL = DOKU_TPL; if (isset($DOKU_TPLINC)==FALSE) $DOKU_TPLINC = DOKU_TPLINC; ?>
<?php
if (!empty($INFO['userinfo'])) {
    $user = true;
}
/**
 * Theme by Oscar M. Lage
 * @author Oscar M. Lage <r0sk10@gmail.com>
 * @link   http://7throot.com
 */

require_once(dirname(__FILE__).'/tpl_functions.php');

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $conf['lang']; ?>" lang="<?php echo $conf['lang']; ?>">
	<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<meta http-equiv="Content-Style-Type" content="text/css" />
			<?php tpl_metaheaders(); ?>
			<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"/>
			<title><?php echo strip_tags($conf['title'])?> &#187; <?php tpl_pagetitle()?></title>
	</head>
	<body>
		<!-- DokuWiki -->
		<div id="dokuwiki">
		
			<!-- Header -->
			<div id="header">
				<?php tpl_link(wl(),'<img src="'.$DOKU_TPL.'images/logo.png" style="margin-top: 15px" alt="'.hsc($conf['title']).'"/>','name="dokuwiki__top" id="dokuwiki__top" accesskey="h" title="[ALT+H]"')?>
			</div>
			<!-- /Header -->
			
			<!-- Menu -->
			<div class="menu">
				<?php print tpl_mypage("menu1"); ?>
			</div>
			<!-- /Menu -->
			
			<!-- Body -->
			<div id="body">
  			<?php html_msgarea()?>
			
				<!-- Body Top -->
				<div id="body_top"></div>
				<!-- /Body Top -->
				
				<?php flush(); ?>
				
				<!-- Sidebar -->
				<div class="sidebar">
					
					<!-- search and actions -->
					<div class="search"><?php tpl_searchform()?></div>
					<div class="search actions">
						<?php if ($user) { ?>
							<?php tpl_actionlink("edit", '<img src="'.$DOKU_TPL.'images/ico/edit.png" title="','" />'); ?>
							<?php tpl_actionlink("history", '<img src="'.$DOKU_TPL.'images/ico/history.png" title="','" />'); ?>
							<?php tpl_actionlink("profile", '<img src="'.$DOKU_TPL.'images/ico/user.png" title="','" />'); ?>
							<?php tpl_actionlink("admin", '<img src="'.$DOKU_TPL.'images/ico/admin.png" title="','" />'); ?>
							<?php tpl_actionlink("login", '<img src="'.$DOKU_TPL.'images/ico/logout.png" title="','" />'); ?>
						<?php } ?>
						<?php if (!$user) { ?>
							<?php tpl_actionlink("history", '<img src="'.$DOKU_TPL.'images/ico/history.png" title="','" />'); ?>
							<?php tpl_actionlink("login", '<img src="'.$DOKU_TPL.'images/ico/login.png" title="','" />'); ?>
						<?php } ?>
					</div>
					<!-- /search and actions -->
					
					<!-- tpl_sidebar -->
					<?php tpl_sidebar('left') ?>
					<!-- /tpl_sidebar -->
				
				</div>
				<!-- /Sidebar -->
				
				<!-- Content -->
				<div id="Content">
				
					<!-- Breadcrumbs -->
					<div class="breadcrumbs"><?php tpl_youarehere(); ?></div>
					<!-- /Breadcrumbs -->
					
					<?php tpl_content(); ?>
					
				</div>
				<!-- /Content -->
				
				<?php flush(); ?>
				
				<!-- Body Bottom -->
				<div id="body_bottom"></div>
				<!-- /Body Bottom -->
			
			</div>
			<!-- Body -->
			
			<!-- Footer -->
			<div id="footer">
					<div class="links">
						<ul>
							<li><a <?php echo $tgt?> href="https://www.paypal.com/xclick/business=r0sk10%40gmail.com&amp;item_name=DokuWiki+r7throot5+Donation&amp;no_shipping=1&amp;no_note=1&amp;tax=0&amp;currency_code=EUR&amp;lc=US" title="Donate!"><img src="<?php echo $DOKU_TPL; ?>/images/btn/btn_donate.gif?w=&amp;h=&amp;cache=cache" class="media" alt="Donate!" /></a></li>
							<li><a <?php echo $tgt?> href="http://www.userlinux.net" title="Designed by r0sk - Userlinux.net"><img src="<?php echo $DOKU_TPL; ?>/images/btn/btn_rskaddict.png?w=&amp;h=&amp;cache=cache" class="media" title="" alt="r0sk addict" /></a></li>
							<li><a <?php echo $tgt?> href="http://www.lastfm.es/user/r0sk/" title="LastFM Profile"><img src="<?php echo $DOKU_TPL; ?>/images/btn/btn_lastfm.png?w=&amp;h=&amp;cache=cache" class="media" alt="LastFM Profile" /></a></li>
							<li><a <?php echo $tgt?> href="http://www.technorati.com/claim/g77spcgvg" title="Technorati Profile"><img src="<?php echo $DOKU_TPL; ?>/images/btn/btn_technorati.png?w=&amp;h=&amp;cache=cache" class="media" title="" alt="Technorati Profile" /></a></li>
							<li><a <?php echo $tgt?> href="http://wiki.splitbrain.org/wiki:dokuwiki" title="Driven by DokuWiki"><img src="<?php echo $DOKU_TPL; ?>/images/btn/btn_dokuwiki.png?w=&amp;h=&amp;cache=cache" class="media" title="" alt="Driven by DokuWiki" /></a></li>
						</ul>
					</div>
			</div>
			<!-- Footer -->
		
		</div>
		<!-- DokuWiki -->
		
	</body>
</html>

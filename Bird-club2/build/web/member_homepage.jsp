<%@page import="com.fptuni.prj301.demo.model.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
  <html class="no-js"  lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
<head>
 <meta charset="utf-8">	
<title>Home</title>
<link rel="alternate" type="application/rss+xml" title="Birds, Cornell Lab of Ornithology &raquo; Feed" href="https://www.birds.cornell.edu/home/feed/" />
<link rel="alternate" type="application/rss+xml" title="Birds, Cornell Lab of Ornithology &raquo; Comments Feed" href="https://www.birds.cornell.edu/home/comments/feed/" />
<link rel="alternate" type="text/calendar" title="Birds, Cornell Lab of Ornithology &raquo; iCal Feed" href="https://www.birds.cornell.edu/home/events/?ical=1" />
<link rel='stylesheet' id='tribe-events-pro-mini-calendar-block-styles-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-mini-calendar-block.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='wp-block-library-css' href='https://www.birds.cornell.edu/home/wp-includes/css/dist/block-library/style.min.css?ver=6.1.1' type='text/css' media='all' />
<style id='global-styles-inline-css' type='text/css'>
body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--darkgray: #767676;--wp--preset--color--mediumgray: #5f6368;--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}.wp-block-button .wp-block-button__link{--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--font-size--large: 1.5rem;--wp--preset--font-size--default: 1.25rem;--wp--preset--font-size--small: 1rem;}.wp-block-pullquote{--wp--preset--font-size--default: 1.5rem;--wp--preset--font-size--small: 1.25rem;--wp--preset--font-size--smaller: 1.125rem;}.wp-block-cover{--wp--preset--color--black: #000000;}.wp-block-group{--wp--preset--color--bluegray: #f3f7fb;--wp--preset--color--lightgray: #efefef;--wp--preset--color--gray: #5f6368;--wp--preset--color--darkgray: #767676;}h1,h2,h3,h4,h5,h6{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}p{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}body { margin: 0;--wp--style--global--content-size: 100%;--wp--style--global--wide-size: 75rem; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body{padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;}a:where(:not(.wp-element-button)){text-decoration: underline;}.wp-element-button, .wp-block-button__link{background-color: #32373c;border-width: 0;color: #fff;font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-color{color: var(--wp--preset--color--mediumgray) !important;}.has-orange-color{color: var(--wp--preset--color--orange) !important;}.has-green-color{color: var(--wp--preset--color--green) !important;}.has-blue-color{color: var(--wp--preset--color--blue) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-background-color{background-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-border-color{border-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.wp-block-button .wp-block-button__link.has-orange-color{color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-color{color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-color{color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.wp-block-button .wp-block-button__link.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-button .wp-block-button__link.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-pullquote.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-smaller-font-size{font-size: var(--wp--preset--font-size--smaller) !important;}.wp-block-cover.has-black-color{color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.wp-block-group.has-bluegray-color{color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-color{color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-color{color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-background-color{background-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-background-color{background-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-background-color{background-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-border-color{border-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-border-color{border-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-border-color{border-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}h1.has-small-font-size,h2.has-small-font-size,h3.has-small-font-size,h4.has-small-font-size,h5.has-small-font-size,h6.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}h1.has-medium-font-size,h2.has-medium-font-size,h3.has-medium-font-size,h4.has-medium-font-size,h5.has-medium-font-size,h6.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}h1.has-large-font-size,h2.has-large-font-size,h3.has-large-font-size,h4.has-large-font-size,h5.has-large-font-size,h6.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}p.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}p.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}p.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}
.wp-block-navigation a:where(:not(.wp-element-button)){color: inherit;}
:where(.wp-block-columns.is-layout-flex){gap: 2em;}
.wp-block-pullquote{font-size: 1.5em;line-height: 1.6;}
</style>
<link rel='stylesheet' id='contact-form-7-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='bp-site-css-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/styles/style.css?ver=1678365708' type='text/css' media='all' />
<link rel='stylesheet' id='bp-bce-site-css-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/style.css?ver=1684846858' type='text/css' media='all' />
<link rel='stylesheet' id='nanogallery2-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/nanogallery2.min.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='nanogallery2woff-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/nanogallery2.woff.min.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='zotpress.shortcode.min.css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/zotpress/css/zotpress.shortcode.min.css?ver=6.1.1' type='text/css' media='all' />
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery.min.js?ver=3.6.1' id='jquery-core-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2' id='jquery-migrate-js'></script>
<link rel="https://api.w.org/" href="https://www.birds.cornell.edu/home/wp-json/" /><link rel="alternate" type="application/json" href="https://www.birds.cornell.edu/home/wp-json/wp/v2/pages/5" /><link rel='shortlink' href='https://www.birds.cornell.edu/home/' />
<link rel="alternate" type="application/json+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2F&#038;format=xml" />
<link rel="canonical" href="https://www.birds.cornell.edu/home/" />
<meta name="tec-api-version" content="v1"><meta name="tec-api-origin" content="https://www.birds.cornell.edu/home"><link rel="alternate" href="https://www.birds.cornell.edu/home/wp-json/tribe/events/v1/" />		<script>
			document.documentElement.className = document.documentElement.className.replace( 'no-js', 'js' );
		</script>
				<style>
			.no-js img.lazyload { display: none; }
			figure.wp-block-image img.lazyloading { min-width: 150px; }
							.lazyload, .lazyloading { opacity: 0; }
				.lazyloaded {
					opacity: 1;
					transition: opacity 400ms;
					transition-delay: 0ms;
				}
					</style>
  </head>
<body class="home page-template page-template-page-home page-template-page-home-php page page-id-5 wp-embed-responsive theme-green nav-column tribe-no-js">
<main id="main-content">  
    <header id="main-nav-header">
<div id="header-wrapper">
<div class="tiny-bar">
<div class="grid-container top-bar">
<div class="top-bar-left grid-x align-middle small-auto logos">
<div class="cell logo lab">
<a href="" title="ChimOwners"><img alt="ChimOwners" data-src="" class="lazyload" src=""><noscript><img src="" alt=""></noscript></a>
</div></div></div></div>
    
<div class="website-header-container grid-container">
<div class="grid-x header-content persistent-nav main-nav align-bottom nav-column">
<div class="cell flex-child-grow website-nav-container medium-auto small-12">
<nav class="grid-x website-nav hide-for-print" aria-label="Primary">
<div id="primary-nav-container">   
<ul id="primary-nav" class="dropdown menu">
<li id="nav-menu-item-41114" class="birds guide-active menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_homepage.html" class="menu-link main-menu-link">Home</a></li>
<li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_events.html" class="menu-link main-menu-link">Events</a></li>
<li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_article.html" class="menu-link main-menu-link">Articles</a></li>
<li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" class="menu-link main-menu-link">Community</a><button aria-haspopup="true" aria-label="Show submenu for Courses"><span class="fa fa-chevron-down" aria-hidden="true"></span></button>
<ul class="sub-menu hidden menu-odd  menu-depth-1" aria-hidden="true">
    <li id="nav-menu-item-41702" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_forum.html" class="menu-link sub-menu-link">Forum</a></li>
    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_locations.html" class="menu-link sub-menu-link">Locations</a></li></ul>
<li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_gallery.html" class="menu-link main-menu-link">Gallery</a></li>
<li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_profile.html" class="menu-link main-menu-link">Profile</a><button aria-haspopup="true" aria-label="Show submenu for Courses"><span class="fa fa-chevron-down" aria-hidden="true"></span></button>
<ul class="sub-menu hidden menu-odd  menu-depth-1" aria-hidden="true">
    <li id="nav-menu-item-41702" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_BirdList.html" class="menu-link sub-menu-link">My bird</a></li>
    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_checkout.html" class="menu-link sub-menu-link">Membership</a></li>
    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_Feedback.html" class="menu-link sub-menu-link">Feedback</a></li>
    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_checkout.html" class="menu-link sub-menu-link">Donation</a></li>
    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="signin" class="menu-link sub-menu-link">Log out</a></li></ul>
</li></ul> </div></nav></div></div></div></div></header>
      
    <div class="content-container home" style="padding: 0px">
 <section id="content" class="content" aria-label="Main content">            
<style>
#hero-wrapper .hero-text { width: 520px !important; }
</style>
<div class="is-layout-flow wp-block-group page-section has-background-image" style="background-image:url(images/banner.png)">
<div class="is-layout-flex wp-container-11 wp-block-columns">
<div class="is-layout-flow wp-block-column" style="flex-basis:50%">
<h2 class="has-small-font-size" id="science-and-innovation">Chim Owner's de facto:</h2>
<h3 class="remove-margin-top has-large-font-size">In connection, we trust</h3>
<p>We bring together our members from all walks of life to exchange new knowledge, share experiences, and help conserve our shared natural world.</p>
<div class="is-layout-flex wp-block-buttons">
<div class="wp-block-button"><a class="wp-block-button__link wp-element-button" href="member_events.html">What's happening?</a></div>
</div></div>
<div class="is-layout-flow wp-block-column"></div></div>
</div>


<div class="is-layout-flow wp-block-group alignfull page-section macaulay">
<h2 class="has-text-align-center has-large-font-size" id="macaulay-library-photowall">Chim Owners' Library</h2>
<p>Epic pictures taken by experts from Chim Owners. For real.</p>



<div>
             <%! List<Image> gallery; %>
            <% gallery = (List<Image>) request.getAttribute("gallery"); 
            
               for (Image image : gallery){
                      out.print("<img src='"
                              + image.getUrl()
                              + "' width='200' height='100'>");
               }
               
           %>           
</div>


<div class="is-horizontal is-content-justification-center is-layout-flex wp-container-33 wp-block-buttons">
    <div class="wp-block-button" style="margin-top: 50px"><a class="wp-block-button__link wp-element-button" href="member_gallery.html">Browse More Photos</a></div>
</div>

</div>
<style>
#hero-wrapper .hero-text { width: 600px; }
</style>

<div class="is-layout-flow wp-block-group alignfull page-section what-you-can-do">
<h2 class="has-text-align-right has-orange-color has-text-color has-small-font-size" id="what-you-can-do">What you can do</h2>
<h3 class="has-text-align-right has-orange-color has-text-color has-large-font-size">Lifelong Learning and Citizen Science</h3>
<div style="height:10px" aria-hidden="true" class="wp-block-spacer"></div>
<div class="is-layout-flex wp-container-15 wp-block-columns">
<div class="is-layout-flow wp-block-column"><div class="article-list card-display carousel card-three "><ul><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/seven-simple-actions-to-help-birds/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-1280x960.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods.jpg 1872w'  alt='7 simple actions to help birds - drink shade-grown coffee, use less plastic, do citizen science, make windows safer, keep cats indoors, use native plants, avoid pesticides' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-1280x960.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/09/7Simple-FI4x3-woods.jpg 1872w' sizes='(max-width: 480px) 100vw, 480px' alt='7 simple actions to help birds - drink shade-grown coffee, use less plastic, do citizen science, make windows safer, keep cats indoors, use native plants, avoid pesticides' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution"></span><a class="article-item-link" href="https://www.birds.cornell.edu/home/seven-simple-actions-to-help-birds/"><span class="article-item-header">Seven Simple Actions to Help Birds</span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/witness-the-family-lives-of-birds/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-480x360.jpg 480w'  alt='Tree Swallow by Marie Read' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/tree-swallow-marie-read-480x360.jpg 480w' sizes='(max-width: 480px) 100vw, 480px' alt='Tree Swallow by Marie Read' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">NestWatch</span><a class="article-item-link" href="https://nestwatch.org/"><span class="article-item-header">Find and monitor nests to help track success in the family lives of birds<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/delve-into-the-wonderful-world-of-bird-biology/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-1280x960.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy.jpg 1900w'  alt='' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-1280x960.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/BirdAcademy.jpg 1900w' sizes='(max-width: 480px) 100vw, 480px' alt='' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Bird Academy</span><a class="article-item-link" href="http://academy.allaboutbirds.org"><span class="article-item-header">Take an online course to transform your understanding of birds<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/watch-wild-birds-up-close-and-live-from-around-the-world/"><div class="article-item-media-ratio"><img  data-srcset=''  alt='Snowy scene at the Cornell Lab Bird Cam' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/BirdCams-trythis-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/BirdCams-trythis-480x360.jpg' srcset='' sizes='(max-width: 480px) 100vw, 480px' alt='Snowy scene at the Cornell Lab Bird Cam' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Bird Cams</span><a class="article-item-link" href="http://cams.allaboutbirds.org/"><span class="article-item-header">Watch wild birds up close and live from around the world<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/whats-the-bird-merlin-bird-id-helps-you-find-out/"><div class="article-item-media-ratio"><img  data-srcset=''  alt='Northern Cardinal by Bob Dunlap/Macaulay Library' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/NCardinal-Dunlap-76883571-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/NCardinal-Dunlap-76883571-480x360.jpg' srcset='' sizes='(max-width: 480px) 100vw, 480px' alt='Northern Cardinal by Bob Dunlap/Macaulay Library' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Merlin</span><a class="article-item-link" href="http://merlin.allaboutbirds.org/"><span class="article-item-header">What’s that bird? Merlin Bird ID helps you find out<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/count-feeder-birds-for-science/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-480x360.jpg 480w'  alt='Golden-fronted Woodpecker by Marcy Barbosa via Birdspotter' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/golden-fronted-woodpecker-marcy-barbosa-birdspotter-480x360.jpg 480w' sizes='(max-width: 480px) 100vw, 480px' alt='Golden-fronted Woodpecker by Marcy Barbosa via Birdspotter' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Project FeederWatch</span><a class="article-item-link" href="https://feederwatch.org/"><span class="article-item-header">Enjoy birds at your feeder and share your observations<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/ebird/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-720x540.png 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-768x576.png 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-1280x960.png 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-480x360.png 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird.png 1900w'  alt='' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-480x360.png" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-480x360.png' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-720x540.png 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-768x576.png 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-1280x960.png 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird-480x360.png 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/eBird.png 1900w' sizes='(max-width: 480px) 100vw, 480px' alt='' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">eBird</span><a class="article-item-link" href="https://ebird.org/home"><span class="article-item-header">Track your sightings, contribute to new maps and insights<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/inspire-youth-to-get-involved-with-birds-and-nature/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-1280x960.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks.jpg 1900w'  alt='' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-1280x960.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2018/10/little-boy-with-ducks.jpg 1900w' sizes='(max-width: 480px) 100vw, 480px' alt='' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Celebrate Urban Birds</span><a class="article-item-link" href="https://celebrateurbanbirds.org/"><span class="article-item-header">Connect with birds in your community with science, art, &#038; events<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/explore-sights-and-sounds-of-animals-from-around-the-world/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-480x360.jpg 480w'  alt='Calliope Hummingbird by Marya Moosman/Macaulay Library' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/ML-calliope-hummingbird-Marya-Moosman-49192871-480x360.jpg 480w' sizes='(max-width: 480px) 100vw, 480px' alt='Calliope Hummingbird by Marya Moosman/Macaulay Library' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution"></span><a class="article-item-link" href="https://www.macaulaylibrary.org/"><span class="article-item-header">Explore sights and sounds of animals from around the world<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/teach-about-birds-and-inquiry-with-our-activities-and-curricula/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-480x360.jpg 480w'  alt='students watching birds on boardwalk' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/k12-students-looking-480x360.jpg 480w' sizes='(max-width: 480px) 100vw, 480px' alt='students watching birds on boardwalk' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">K–12 Education</span><a class="article-item-link" href="https://www.birds.cornell.edu/k12/"><span class="article-item-header">Teach about birds and inquiry with our activities and curricula<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/merge-your-passion-for-birds-with-studies-in-any-field/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-480x360.jpg 480w'  alt='students at Cornell Botanical Gardens by Justin Muir' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/study-here-CALS_20180605_679-justin-muir-botanical-gardens-480x360.jpg 480w' sizes='(max-width: 480px) 100vw, 480px' alt='students at Cornell Botanical Gardens by Justin Muir' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Student Resources</span><a class="article-item-link" href="https://www.birds.cornell.edu/students/"><span class="article-item-header">Merge your passion for birds with studies in any field<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li><li class="article-item"><div class="article-item-container"><div class="article-item-media content-article" data-link-to="https://www.birds.cornell.edu/home/connect-with-other-young-birders/"><div class="article-item-media-ratio"><img  data-srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders.jpg 988w'  alt='young birders on field trip in forest near Cornell University' loading="lazy" data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-480x360.jpg" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-480x360.jpg' srcset='https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2019/01/YOungBirders.jpg 988w' sizes='(max-width: 480px) 100vw, 480px' alt='young birders on field trip in forest near Cornell University' loading="lazy" /></noscript></div></div><div class="article-item-body"><span class="attribution">Young Birders Network</span><a class="article-item-link" href="https://ebird.org/about/resources/for-young-birders"><span class="article-item-header">Connect with other young birders<span class="fa fa-external-link-alt" aria-label="External link"></span></span></a></div></div></li></ul></div>
</div>

<div class="is-layout-flow wp-block-column" style="flex-basis:25%">
<p>Begin your journey here. Choose a project to match your interests.</p>
</div>
</div>
</div>



<div class="is-layout-flow wp-block-group alignfull main-section has-gray-background-color has-background">
<h2 class="has-text-align-center has-white-color has-text-color has-large-font-size" id="join-as-member">Make a Difference</h2>
<p class="has-text-align-center has-white-color has-text-color">Let’s work together to protect birds and habitats</p>
<div class="is-layout-flex wp-block-buttons is-content-justification-center">
<div class="wp-block-button"><a class="wp-block-button__link has-orange-background-color has-background" href="https://join.birds.cornell.edu/page/14619/donate/1">Join as a Member</a></div>
</div>
</div>
<style>
#hero-wrapper .hero-text { width: 600px; }
</style>  
 </section>
</div>
</article> 

  </main>

					
  <footer id="main-footer">
    <div class="grid-container">
        
              <div class="footer-menu hide-for-print">
          <nav aria-label="Site map">
            <ul id="footer-nav" class="menu"><li id="menu-item-1223" class="footer-menu-header menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1223"><a href="https://www.birds.cornell.edu/home/about/">About</a>
<ul class="sub-menu">
	<li id="menu-item-3256" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3256"><a href="https://www.birds.cornell.edu/home/about/">Mission</a></li>
	<li id="menu-item-1228" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1228"><a href="https://www.birds.cornell.edu/home/about/programs/">Programs</a></li>
	<li id="menu-item-6129" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6129"><a href="https://www.birds.cornell.edu/home/staff-directory/">People</a></li>
	<li id="menu-item-9411" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9411"><a href="https://www.birds.cornell.edu/home/administrative-board/">Administrative Board</a></li>
	<li id="menu-item-3255" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3255"><a href="https://www.birds.cornell.edu/home/impact/">Your Impact</a></li>
	<li id="menu-item-1231" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1231"><a href="https://www.birds.cornell.edu/home/visit/">Visit Us</a></li>
	<li id="menu-item-1234" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1234"><a href="https://www.birds.cornell.edu/home/jobs/">Careers</a></li>
	<li id="menu-item-1290" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1290"><a href="https://www.birds.cornell.edu/home/give/corporate-sponsors/">Corporate Sponsors</a></li>
	<li id="menu-item-1237" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1237"><a href="https://www.birds.cornell.edu/home/news/">News Room</a></li>
</ul>
</li>
<li id="menu-item-1174" class="footer-menu-header menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1174"><a href="http://birds.cornell.edu/citizenscience">Citizen Science</a>
<ul class="sub-menu">
	<li id="menu-item-1176" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1176"><a href="http://ebird.org">eBird</a></li>
	<li id="menu-item-1241" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1241"><a href="https://feederwatch.org/">Project Feederwatch</a></li>
	<li id="menu-item-1242" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1242"><a href="https://celebrateurbanbirds.org/">Celebrate Urban Birds</a></li>
	<li id="menu-item-1243" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1243"><a href="https://nestwatch.org/">NestWatch</a></li>
	<li id="menu-item-1244" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1244"><a href="https://www.birdcount.org/">Great Backyard Bird Count</a></li>
</ul>
</li>
<li id="menu-item-1245" class="footer-menu-header menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1245"><a href="https://academy.allaboutbirds.org/course-list/">Lifelong Learning</a>
<ul class="sub-menu">
	<li id="menu-item-1246" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1246"><a href="https://academy.allaboutbirds.org/">Bird Academy</a></li>
	<li id="menu-item-1247" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1247"><a href="http://birds.cornell.edu/k12">K–12 Education</a></li>
	<li id="menu-item-3215" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3215"><a href="https://ebird.org/about/resources/for-young-birders">Young Birders Network</a></li>
	<li id="menu-item-3223" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3223"><a href="https://www.birds.cornell.edu/students/">Study at Cornell</a></li>
	<li id="menu-item-1250" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1250"><a href="https://www.birds.cornell.edu/home/visit/events/">Events</a></li>
</ul>
</li>
<li id="menu-item-1294" class="footer-menu-header menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1294"><a href="https://www.allaboutbirds.org/">Bird Info &#038; Tools</a>
<ul class="sub-menu">
	<li id="menu-item-1295" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1295"><a href="http://allaboutbirds.org/">All About Birds</a></li>
	<li id="menu-item-1296" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1296"><a href="http://merlin.allaboutbirds.org">Merlin Bird ID App</a></li>
	<li id="menu-item-1297" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1297"><a href="https://ebird.org/explore">eBird Explore</a></li>
	<li id="menu-item-3231" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3231"><a href="https://www.macaulaylibrary.org/">Macaulay Library</a></li>
	<li id="menu-item-1302" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1302"><a href="https://www.allaboutbirds.org/browse/topic/faqs">FAQs</a></li>
</ul>
</li>
<li id="menu-item-6068" class="footer-menu-header menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6068"><a href="https://www.allaboutbirds.org/living-bird-latest-issue/">Publications</a>
<ul class="sub-menu">
	<li id="menu-item-1311" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1311"><a href="https://www.allaboutbirds.org/living-bird-latest-issue/">Living Bird Magazine</a></li>
	<li id="menu-item-1303" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1303"><a href="https://birdsoftheworld.org/bow/home">Birds of the World</a></li>
	<li id="menu-item-1314" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1314"><a href="http://www.stateofthebirds.org/">State of the Birds</a></li>
	<li id="menu-item-1317" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1317"><a href="https://www.birds.cornell.edu/home/publications/">Scientific Publications</a></li>
	<li id="menu-item-1315" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1315"><a href="https://www.birds.cornell.edu/clementschecklist/?__hstc=75100365.c70712fb55889a1e2031a3bf92292bd0.1538664071585.1538685134471.1538744947105.4&#038;__hssc=75100365.5.1538748429742&#038;__hsfp=1973963874#_ga=2.233507294.1543017368.1538664071-1800547410.1538664071&#038;_gac=1.124188152.1538686263.Cj0KCQjw9NbdBRCwARIsAPLsnFb-RssJaVivwNZvhdCar56c7rt6HYG4BqXPUes0KnJzSN-JStUNSiIaAiJVEALw_wcB">Clements Checklist</a></li>
	<li id="menu-item-3234" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3234"><a href="https://cornelllabpgstore.com/">Books for All Ages</a></li>
	<li id="menu-item-3236" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3236"><a href="https://www.birds.cornell.edu/home/annual-report/">Cornell Lab Annual Report 2022</a></li>
</ul>
</li>
<li id="menu-item-1262" class="footer-menu-header menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1262"><a href="https://www.birds.cornell.edu/home/get-involved/">Quick Finders</a>
<ul class="sub-menu">
	<li id="menu-item-5971" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5971"><a href="https://www.birds.cornell.edu/home/members/">Members</a></li>
	<li id="menu-item-3237" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3237"><a href="https://www.birds.cornell.edu/home/visit/">Visitors</a></li>
	<li id="menu-item-3250" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3250"><a href="http://birds.cornell.edu/citizenscience">Citizen-Science Participants</a></li>
	<li id="menu-item-3238" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3238"><a href="http://birds.cornell.edu/k12">K–12 Educators</a></li>
	<li id="menu-item-3242" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3242"><a href="https://www.birds.cornell.edu/students/">Students</a></li>
	<li id="menu-item-6366" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6366"><a href="https://www.birds.cornell.edu/home/postdoctoral-scholars-program/">Postdoctoral Program</a></li>
	<li id="menu-item-6303" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6303"><a href="https://www.birds.cornell.edu/home/shop-for-our-cause/">Shop for Our Cause</a></li>
</ul>
</li>
<li id="menu-item-1266" class="footer-menu-header menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1266"><a href="https://give.birds.cornell.edu/page/87895/donate/1?ea.tracking.id=BCF">Donate</a>
<ul class="sub-menu">
	<li id="menu-item-1271" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1271"><a href="https://www.birds.cornell.edu/home/give/">Support Our Cause</a></li>
	<li id="menu-item-1268" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1268"><a href="https://give.birds.cornell.edu/page/99134/donate/1?ea.tracking.id=BCF">Monthly Giving</a></li>
	<li id="menu-item-1267" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1267"><a href="https://join.birds.cornell.edu/ea-action/action?ea.client.id=1806&#038;ea.campaign.id=28635&#038;ea.tracking.id=BCF">Join</a></li>
	<li id="menu-item-1287" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1287"><a href="https://join.birds.cornell.edu/ea-action/action?ea.client.id=1806&#038;ea.campaign.id=23683&#038;ea.tracking.id=DRD#_ga=2.237129536.1543017368.1538664071-1800547410.1538664071">Golden-wing Society</a></li>
	<li id="menu-item-3247" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3247"><a href="https://www.birds.cornell.edu/home/give/chairmans-council/">Chairman’s Council</a></li>
	<li id="menu-item-1283" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1283"><a href="https://birds.cornell.giftplans.org/">Planned Giving</a></li>
</ul>
</li>
</ul>          </nav>
        </div><!-- .footer-menu -->
              
        <div class="footer-contact grid-x">
                                <div class="cell medium-2 small-6 cu-logo">
              <img  alt="Cornell University" data-src="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/images/cornell-logo.svg" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="><noscript><img src="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/images/cornell-logo.svg" alt="Cornell University"></noscript>
            </div><!-- .cu-logo -->
          
          
          <div class="cell medium-auto small-12 flex-child-grow contact">
            <div class="social hide-for-print">
              <ul class="social-icons"><li class="twitter"><a href="https://twitter.com/cornellbirds" title="Follow us on Twitter"><span class="fab fa-twitter"></span></a></li><li class="facebook"><a href="https://www.facebook.com/cornellbirds" title="Like us on Facebook"><span class="fab fa-facebook-f"></span></a></li><li class="instagram"><a href="https://www.instagram.com/cornellbirds" title="Follow us on Instagram"><span class="fab fa-instagram"></span></a></li></ul>            </div>

                        <div class="menu-footer-contact-list-container"><ul id="contact-nav" class="menu hide-for-print"><li id="menu-item-2642" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2642"><a href="https://www.birds.cornell.edu/home/contact-us/">Contact Us</a></li>
<li id="menu-item-11332" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11332"><a href="https://www.birds.cornell.edu/home/our-commitment-to-diversity-equity-inclusion-and-justice/">Land Acknowledgment</a></li>
<li id="menu-item-10589" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10589"><a href="https://www.birds.cornell.edu/home/web-accessibility-assistance/">Web Accessibility Assistance</a></li>
<li id="menu-item-11355" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11355"><a href="https://privacy.cornell.edu/information-use-cornell">Privacy Policy</a></li>
<li id="menu-item-2643" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2643"><a href="https://www.birds.cornell.edu/home/terms-of-use/">Terms of use</a></li>
</ul></div>
            <p class="source-org copyright">&copy; 2023 Cornell University</p>          </div><!-- .contact -->

        </div><!-- .footer-contact -->
      
    </div> <!-- end .grid-container -->
  
  </footer> <!-- end .footer -->

  
<!-- BEGIN Search modal -->
  <div class="reveal" id="search-modal" data-reveal role="dialog" data-animation-in="fade-in fast" aria-label="Search">
    <button class="close-button" data-close aria-label="Close" type="button"><span class="text">Cancel</span> <span class="symbol" aria-hidden="true">&times;</span></button>
    <div class="search-container">
  <div class="search-area row">
    <form role="search" method="get" class="search-form" action="/home/search/">
      <span class="fa fa-search" aria-hidden="true"></span>
      <label for="modal-search" class="sr-only">Search this website</label>
      <input id="modal-search" type="search" class="search-field" placeholder="Search: Enter Keywords" value="" name="q" title="Search for:" />
      <input type="submit" class="search-submit button" value="Search" />
    </form>
  </div><!-- .search-form -->
</div><!-- .search-container -->
          <aside id="search-modal-content" class="search-links" aria-label="Explore these links">
        
<div class="is-layout-flex wp-container-44 wp-block-columns">
<div class="is-layout-flow wp-block-column">
<p class="has-text-align-center">Bird ID help, Bird Guide</p>



<div class="is-layout-flex wp-block-buttons is-content-justification-center">
<div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://www.allaboutbirds.org/">All About Birds</a></div>
</div>
</div>



<div class="is-layout-flow wp-block-column">
<p class="has-text-align-center">Find birds near you</p>



<div class="is-layout-flex wp-block-buttons is-content-justification-center">
<div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://ebird.org/">eBird</a></div>
</div>
</div>



<div class="is-layout-flow wp-block-column quick-links">
<p class="has-text-align-center">Quick Links</p>



<div class="is-layout-flex wp-container-42 wp-block-columns">
<div class="is-layout-flow wp-block-column">
<p class="has-text-align-center"><a href="https://www.birds.cornell.edu/home/visit/" data-type="page" data-id="1229">Visit Us</a><br><a href="https://www.birds.cornell.edu/home/staff-directory/" data-type="page" data-id="1414">Staff Directory</a></p>
</div>



<div class="is-layout-flow wp-block-column">
<p class="has-text-align-center"><a href="https://www.birds.cornell.edu/home/members/" data-type="page" data-id="1321">Members</a><br><a href="https://www.birds.cornell.edu/students/">Students</a></p>
</div>
</div>
</div>
</div>
      </aside>
    
  </div>		
  <noscript><iframe 
height="0" width="0" style="display:none;visibility:hidden" data-src="//www.googletagmanager.com/ns.html?id=GTM-P7854M" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="></iframe></noscript>

<link rel="stylesheet" href=https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.min.css>
<script type="text/javascript" src="https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.js"></script>
<script type="text/javascript">
     if(!window.location.pathname.toLowerCase().includes('terms-of-use') && !window.location.pathname.toLowerCase().includes('our-commitment-to-diversity-equity-inclusion-and-justice') && !window.location.pathname.toLowerCase().includes('web-accessibility-assistance')){
          var clo_lightbox = new CLO_Lightbox();
          clo_lightbox.create('bce', 'bcehome', window.location.pathname, 'live');
     }
</script>		<script>
		( function ( body ) {
			'use strict';
			body.className = body.className.replace( /\btribe-no-js\b/, 'tribe-js' );
		} )( document.body );
		</script>
		<script> /* <![CDATA[ */var tribe_l10n_datatables = {"aria":{"sort_ascending":": activate to sort column ascending","sort_descending":": activate to sort column descending"},"length_menu":"Show _MENU_ entries","empty_table":"No data available in table","info":"Showing _START_ to _END_ of _TOTAL_ entries","info_empty":"Showing 0 to 0 of 0 entries","info_filtered":"(filtered from _MAX_ total entries)","zero_records":"No matching records found","search":"Search:","all_selected_text":"All items on this page were selected. ","select_all_link":"Select all pages","clear_selection":"Clear Selection.","pagination":{"all":"All","next":"Next","previous":"Previous"},"select":{"rows":{"0":"","_":": Selected %d rows","1":": Selected 1 row"}},"datepicker":{"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesMin":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"nextText":"Next","prevText":"Prev","currentText":"Today","closeText":"Done","today":"Today","clear":"Clear"}};/* ]]> */ </script><style id='core-block-supports-inline-css' type='text/css'>
.wp-block-buttons.wp-container-18{justify-content:flex-end;}.wp-block-buttons.wp-container-1,.wp-block-buttons.wp-container-3,.wp-block-buttons.wp-container-5,.wp-block-buttons.wp-container-28,.wp-block-buttons.wp-container-33{justify-content:center;}.wp-block-columns.wp-container-7,.wp-block-columns.wp-container-11,.wp-block-columns.wp-container-15,.wp-block-columns.wp-container-20,.wp-block-columns.wp-container-24,.wp-block-columns.wp-container-31,.wp-block-columns.wp-container-42,.wp-block-columns.wp-container-44{flex-wrap:nowrap;}
</style>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.2' id='swv-js'></script>
<script type='text/javascript' id='contact-form-7-js-extra'>
/* <![CDATA[ */
var wpcf7 = {"api":{"root":"https:\/\/www.birds.cornell.edu\/home\/wp-json\/","namespace":"contact-form-7\/v1"},"cached":"1"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.2' id='contact-form-7-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/wp-smush-pro/app/assets/js/smush-lazy-load.min.js?ver=3.12.3' id='smush-lazy-load-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/foundation.min.js?ver=6.1.1' id='foundation-js-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/slick.min.js?ver=6.1.1' id='slick-js-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/scripts.js?ver=1684241978' id='bp-site-js-js'></script>
<script type='text/javascript' src='https://code.jquery.com/ui/1.12.1/jquery-ui.min.js' id='jquery-ui-js'></script>
<script type='text/javascript' id='bp-bce-site-js-js-extra'>
/* <![CDATA[ */
var wp_post_vars = {"postSlug":"home-page"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/scripts.js?ver=1684846858' id='bp-bce-site-js-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/jquery.nanogallery2.min.js' id='nanogallery2-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/photowall.js' id='photowall-js'></script>		
</body>	
</html>
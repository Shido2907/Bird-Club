<%-- 
    Document   : member_Feedback
    Created on : Jun 4, 2023, 2:09:34 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        <meta charset="utf-8">
        <title>Bird List</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta class="foundation-mq">
        <link rel="icon" href="https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/favicon.png">
        <link href="https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/images/apple-icon-touch.png" rel="apple-touch-icon" />

        <meta name='robots' content='max-image-preview:large' />
        <link rel='dns-prefetch' href='//www.allaboutbirds.org' />
        <link rel='dns-prefetch' href='//code.jquery.com' />
        <link rel='dns-prefetch' href='//js.hscta.net' />
        <link rel="alternate" type="application/rss+xml" title="All About Birds &raquo; Feed" href="https://www.allaboutbirds.org/news/feed/" />
        <link rel="alternate" type="application/rss+xml" title="All About Birds &raquo; Comments Feed" href="https://www.allaboutbirds.org/news/comments/feed/" />
        <link rel="alternate" type="text/calendar" title="All About Birds &raquo; iCal Feed" href="https://www.allaboutbirds.org/news/events/?ical=1" />
        <link rel="alternate" type="application/rss+xml" title="All About Birds &raquo; A Modest Proposal: Can eBird Help Choose Better State Birds? [Part 1] Comments Feed" href="https://www.allaboutbirds.org/news/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1/feed/" />
        <link rel='stylesheet' id='tribe-events-pro-mini-calendar-block-styles-css' href='https://www.allaboutbirds.org/news/wp-content/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-mini-calendar-block.min.css?ver=6.0.5.1' media='all' />
        <link rel='stylesheet' id='wp-block-library-css' href='https://www.allaboutbirds.org/news/wp-includes/css/dist/block-library/style.min.css?ver=6.1.1' media='all' />
        <style id='global-styles-inline-css' type='text/css'>
            body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--darkgray: #767676;--wp--preset--color--mediumgray: #5f6368;--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}.wp-block-button .wp-block-button__link{--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--font-size--large: 1.5rem;--wp--preset--font-size--default: 1.25rem;--wp--preset--font-size--small: 1rem;}.wp-block-pullquote{--wp--preset--font-size--default: 1.5rem;--wp--preset--font-size--small: 1.25rem;--wp--preset--font-size--smaller: 1.125rem;}.wp-block-cover{--wp--preset--color--black: #000000;}.wp-block-group{--wp--preset--color--bluegray: #f3f7fb;--wp--preset--color--lightgray: #efefef;--wp--preset--color--gray: #5f6368;--wp--preset--color--darkgray: #767676;}h1,h2,h3,h4,h5,h6{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}p{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}body { margin: 0;--wp--style--global--content-size: 100%;--wp--style--global--wide-size: 75rem; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body{padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;}a:where(:not(.wp-element-button)){text-decoration: underline;}.wp-element-button, .wp-block-button__link{background-color: #32373c;border-width: 0;color: #fff;font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-color{color: var(--wp--preset--color--mediumgray) !important;}.has-orange-color{color: var(--wp--preset--color--orange) !important;}.has-green-color{color: var(--wp--preset--color--green) !important;}.has-blue-color{color: var(--wp--preset--color--blue) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-background-color{background-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-border-color{border-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.wp-block-button .wp-block-button__link.has-orange-color{color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-color{color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-color{color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.wp-block-button .wp-block-button__link.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-button .wp-block-button__link.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-pullquote.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-smaller-font-size{font-size: var(--wp--preset--font-size--smaller) !important;}.wp-block-cover.has-black-color{color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.wp-block-group.has-bluegray-color{color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-color{color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-color{color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-background-color{background-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-background-color{background-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-background-color{background-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-border-color{border-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-border-color{border-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-border-color{border-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}h1.has-small-font-size,h2.has-small-font-size,h3.has-small-font-size,h4.has-small-font-size,h5.has-small-font-size,h6.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}h1.has-medium-font-size,h2.has-medium-font-size,h3.has-medium-font-size,h4.has-medium-font-size,h5.has-medium-font-size,h6.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}h1.has-large-font-size,h2.has-large-font-size,h3.has-large-font-size,h4.has-large-font-size,h5.has-large-font-size,h6.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}p.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}p.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}p.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}
            .wp-block-navigation a:where(:not(.wp-element-button)){color: inherit;}
            :where(.wp-block-columns.is-layout-flex) {gap: 2em;}
            .wp-block-pullquote{font-size: 1.5em;line-height: 1.6;}
        </style>
        <link rel='stylesheet' id='bp-site-css-css' href='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/styles/style.css?ver=1678365890' media='all' />
        <link rel='stylesheet' id='bp-aab-site-css-css' href='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2-aab/styles/style.css?ver=1684847008' media='all' />
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-includes/js/jquery/jquery.min.js?ver=3.6.1' id='jquery-core-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2' id='jquery-migrate-js'></script>
        <link rel="https://api.w.org/" href="https://www.allaboutbirds.org/news/wp-json/" /><link rel="alternate" type="application/json" href="https://www.allaboutbirds.org/news/wp-json/wp/v2/posts/56828" /><link rel='shortlink' href='https://www.allaboutbirds.org/news/?p=56828' />
        <link rel="alternate" type="application/json+oembed" href="https://www.allaboutbirds.org/news/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.allaboutbirds.org%2Fnews%2Fa-modest-proposal-can-ebird-help-choose-better-state-birds-part-1%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://www.allaboutbirds.org/news/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.allaboutbirds.org%2Fnews%2Fa-modest-proposal-can-ebird-help-choose-better-state-birds-part-1%2F&#038;format=xml" />




        <link rel="canonical" href="https://www.allaboutbirds.org/news/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1/" />
        <meta name="description" content="We love cardinals, mockingbirds, and meadowlarks, too—but do these 3 species have to represent 18 separate states? We turned to eBird to find alternative st ..." />
        <script type="application/ld+json">{"@context":"https:\/\/schema.org","@graph":[{"@type":"Organization","@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-publishing-organization","url":"https:\/\/www.allaboutbirds.org\/news","name":"All About Birds"},{"@type":"WebSite","@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-website","url":"https:\/\/www.allaboutbirds.org\/news","name":"All About Birds","encoding":"UTF-8","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.allaboutbirds.org\/news\/search\/{search_term_string}\/","query-input":"required name=search_term_string"}},{"@type":"Person","@id":"https:\/\/www.allaboutbirds.org\/news\/author\/hugh\/#schema-author","name":"Hugh Powell","url":"https:\/\/www.allaboutbirds.org\/news\/author\/hugh\/"},{"@type":"WebPage","@id":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/#schema-webpage","isPartOf":{"@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-website"},"publisher":{"@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-publishing-organization"},"url":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/"},{"@type":"Article","mainEntityOfPage":{"@id":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/#schema-webpage"},"author":{"@id":"https:\/\/www.allaboutbirds.org\/news\/author\/hugh\/#schema-author"},"publisher":{"@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-publishing-organization"},"dateModified":"2023-04-26T14:09:42","datePublished":"2023-04-05T10:54:36","headline":"A Modest Proposal: Can eBird Help Choose Better State Birds? [Part 1] | All About Birds","description":"We love cardinals, mockingbirds, and meadowlarks, too\u2014but do these 3 species have to represent 18 separate states? We turned to eBird to find alternative st ...","name":"A Modest Proposal: Can eBird Help Choose Better State Birds? [Part 1]","image":{"@type":"ImageObject","@id":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/#schema-article-image","url":"https:\/\/www.allaboutbirds.org\/news\/wp-content\/uploads\/2023\/03\/State-Cardinal-blue-FI.jpg","height":750,"width":1000},"thumbnailUrl":"https:\/\/www.allaboutbirds.org\/news\/wp-content\/uploads\/2023\/03\/State-Cardinal-blue-FI.jpg"}]}</script>

        <meta name="tec-api-version" content="v1"><meta name="tec-api-origin" content="https://www.allaboutbirds.org/news"><link rel="alternate" href="https://www.allaboutbirds.org/news/wp-json/tribe/events/v1/" /> <script>
            document.documentElement.className = document.documentElement.className.replace('no-js', 'js');
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

    <body class="post-template-default single single-post postid-56828 single-format-standard wp-embed-responsive theme-green nav-column tribe-no-js">
        <div id="main-container">

            <header id="main-nav-header">
                <div id="header-wrapper">
                    <div class="tiny-bar">
                        <div class="grid-container top-bar">
                            <div class="top-bar-left grid-x align-middle small-auto logos">
                                <div class="cell logo lab">
                                    <a href="http://birds.cornell.edu/" title="ChimOwners">
                                        <img alt="ChimOwners" data-src="" class="lazyload" src=""><noscript><img src="" alt=""></noscript>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="website-header-container grid-container">
                        <div class="grid-x header-content persistent-nav main-nav align-bottom nav-column">

                            <div class="cell flex-child-grow website-nav-container medium-auto small-12">
                                <nav class="grid-x website-nav hide-for-print" aria-label="Primary">
                                    <div id="primary-nav-container">

                                        <ul id="primary-nav" class="dropdown menu">

                                            <li id="nav-menu-item-41114" class="birds guide-active menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="" class="menu-link main-menu-link">Home</a>    
                                            </li>

                                            <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_events" class="menu-link main-menu-link">Events</a>
                                            </li>

                                            <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_article" class="menu-link main-menu-link">Articles</a>
                                            </li>

                                            <li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="" class="menu-link main-menu-link">Community</a><button aria-haspopup="true" aria-label="Show submenu for Courses"><span class="fa fa-chevron-down" aria-hidden="true"></span></button>
                                                <ul class="sub-menu hidden menu-odd  menu-depth-1" aria-hidden="true">
                                                    <li id="nav-menu-item-41702" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_forum.html" class="menu-link sub-menu-link">Forum</a></li>
                                                    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="" class="menu-link sub-menu-link">Locations</a></li>
                                                </ul>

                                            <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_gallery" class="menu-link main-menu-link">Gallery</a>
                                            </li>

                                            <li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="" class="menu-link main-menu-link">Profile</a><button aria-haspopup="true" aria-label="Show submenu for Courses"><span class="fa fa-chevron-down" aria-hidden="true"></span></button>
                                                <ul class="sub-menu hidden menu-odd  menu-depth-1" aria-hidden="true">
                                                    <li id="nav-menu-item-41702" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_profile" class="menu-link sub-menu-link">My bird</a></li>
                                                    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_membership" class="menu-link sub-menu-link">Membership</a></li>
                                                    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="membet_FeedBack.html" class="menu-link sub-menu-link">Feedback</a></li>
                                                    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="" class="menu-link sub-menu-link">Donation</a></li>
                                                    <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="" class="menu-link sub-menu-link">Log out</a></li>
                                                </ul>
                                            </li>

                                        </ul> </div>

                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <main id="main-content">

                <div class="content-container archive page-wider">
                    <header class="article-header" aria-label="Title">
                        <h1 id="archive-header" class="page-title"> FeedBack</h1>
                    </header> 
                    <section aria-labelledby="archive-header">
                        <div class="wp-block-columns">
                            <div class="wp-block-column archive-content">
                                <div class="article-list list-style archives">
                                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                                    <title>Snippet - BBBootstrap</title>
                                    <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
                                    <link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>
                                    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                    <style>::-webkit-scrollbar {
                                            width: 8px;
                                        }
                                        /* Track */
                                        ::-webkit-scrollbar-track {
                                            background: #f1f1f1; 
                                        }

                                        /* Handle */
                                        ::-webkit-scrollbar-thumb {
                                            background: #888; 
                                        }

                                        /* Handle on hover */
                                        ::-webkit-scrollbar-thumb:hover {
                                            background: #555; 
                                        } .formthree {
                                            background: #f7f7f7;
                                        }

                                        .ptb-100 {
                                            padding-top: 100px;
                                            padding-bottom: 100px;
                                        } 

                                        .sr-only {
                                            position: absolute;
                                            width: 1px;
                                            height: 1px;
                                            padding: 0;
                                            margin: -1px;
                                            overflow: hidden;
                                            clip: rect(0, 0, 0, 0);
                                            border: 0;
                                        }

                                        .formthree .form-control {
                                            border-top: 0;
                                            border-left: 0;
                                            border-right: 0;
                                            font-size: 13px;
                                            border-bottom: 1px solid #d3d3d3;
                                            background: transparent;
                                            font-family: 'Roboto';
                                        }

                                        form .btn {
                                            border-radius: 0 !important;
                                        }

                                        .formthree form button.btn {
                                            margin: 30px auto;
                                            display: block;
                                            padding: 11px 32px;
                                            background: #4285f4;
                                            border: 1px solid #4285f4;
                                            -webkit-transition: all 0.3s ease 0s;
                                            -moz-transition: all 0.3s ease 0s;
                                            -o-transition: all 0.3s ease 0s;
                                            transition: all 0.3s ease 0s;
                                        }


                                        .formthree .btn-primary.focus, .formthree .btn-primary:hover {
                                            background-color: transparent;
                                            color: #4285f4;
                                            border: 1px solid #4285f4 !important;
                                        }

                                    </style>
                                    <body className='snippet-body'>
                                        <div class="formthree ptb-100">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-md-8 col-md-offset-2">
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="sr-only">Name</label>
                                                                        <input type="text" class="form-control" required="" id="nameSix" placeholder="Your Name">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="sr-only">Email</label>
                                                                        <input type="email" class="form-control" required="" id="emailSix" placeholder="Email Address">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!--end of /.row-->
                                                            <div class="form-group">
                                                                <label class="sr-only">Message</label>
                                                                <textarea class="form-control" required="" rows="7" placeholder="Write Message"></textarea>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary">Send Message</button>
                                                        </form>
                                                    </div>
                                                    <!-- /.col-md-8 -->
                                                </div>
                                                <!-- /.row --> 
                                            </div>
                                            <!-- /.container -->
                                        </div>
                                        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
                                        <script type='text/javascript' src='#'></script>
                                        <script type='text/javascript' src='#'></script>
                                        <script type='text/javascript' src='#'></script>
                                        <script type='text/javascript'>#</script>
                                        <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
                                            myLink.addEventListener('click', function (e) {
                                                e.preventDefault();
                                            });</script>                       
                                </div>

                            </div>
                        </div>
                    </section>
                </div>
            </main>

            <footer id="main-footer">
                <div class="grid-container">
                    <div class="footer-menu hide-for-print">
                        <nav aria-label="Site map">
                            <ul id="footer-nav" class="menu"><li id="menu-item-25" class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-25"><a href="https://www.birds.cornell.edu/home/about/">About Us</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-26" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-26"><a href="https://www.birds.cornell.edu/home/about/">Overview</a></li>
                                        <li id="menu-item-27" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-27"><a href="https://www.birds.cornell.edu/home/about/programs/">Programs</a></li>
                                        <li id="menu-item-28" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-28"><a href="https://www.birds.cornell.edu/home/visit/">Visit the Lab</a></li>
                                        <li id="menu-item-29" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-29"><a href="https://www.birds.cornell.edu/home/jobs/">Job Opportunities</a></li>
                                        <li id="menu-item-30" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-30"><a href="https://www.birds.cornell.edu/home/news/">News Releases</a></li>
                                        <li id="menu-item-19257" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-19257"><a href="https://www.allaboutbirds.org/news/for-advertisers/">For Advertisers</a></li>
                                    </ul>
                                </li>
                                <li id="menu-item-31" class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-31"><a href="http://www.birds.cornell.edu/citsci/">Citizen Science</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-32" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-32"><a href="https://ebird.org/home">eBird</a></li>
                                        <li id="menu-item-34" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-34"><a href="https://feederwatch.org/">Project Feederwatch</a></li>
                                        <li id="menu-item-35" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-35"><a href="https://nestwatch.org">NestWatch</a></li>
                                        <li id="menu-item-36" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-36"><a href="https://celebrateurbanbirds.org/">Celebrate Urban Birds</a></li>
                                        <li id="menu-item-37" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-37"><a href="http://gbbc.birdcount.org">Great Backyard Bird Count</a></li>
                                    </ul>
                                </li>
                                <li id="menu-item-38" class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-38"><a href="https://academy.allaboutbirds.org/course-list/">Lifelong Learning</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-39" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-39"><a href="https://academy.allaboutbirds.org/">Online Courses</a></li>
                                        <li id="menu-item-41" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41"><a href="https://www.birds.cornell.edu/home/visit/events/">Bird Walks &#038; Events</a></li>
                                        <li id="menu-item-42" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42"><a href="https://academy.allaboutbirds.org/product/spring-field-ornithology-northeast/">Spring Field Ornithology</a></li>
                                        <li id="menu-item-44" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-44"><a href="https://www.birds.cornell.edu/k12">K–12 Education</a></li>
                                    </ul>
                                </li>
                                <li id="menu-item-57" class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57"><a href="https://www.birds.cornell.edu/home/publications/">Publications</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-58" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-58"><a href="https://birdsoftheworld.org/bow/home">Birds of the World</a></li>
                                        <li id="menu-item-59" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-59"><a href="http://www.birds.cornell.edu/clementschecklist">Clements Checklist</a></li>
                                        <li id="menu-item-53" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-53"><a href="https://www.stateofthebirds.org/">State of the Birds</a></li>
                                        <li id="menu-item-54" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-54"><a href="https://www.birds.cornell.edu/home/annual-report/">Annual Report</a></li>
                                        <li id="menu-item-55" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-55"><a href="https://www.birds.cornell.edu/home/publications/">Scientific Citations</a></li>
                                        <li id="menu-item-27867" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-27867"><a href="https://www.allaboutbirds.org/news/living-bird-latest-issue/">Living Bird Magazine</a></li>
                                    </ul>
                                </li>
                                <li id="menu-item-45" class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#">Explore More</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-46" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-46"><a href="https://www.allaboutbirds.org/guide/">Bird Guide</a></li>
                                        <li id="menu-item-47" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-47"><a href="https://www.allaboutbirds.org/cams/">Bird Cams</a></li>
                                        <li id="menu-item-48" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-48"><a href="https://www.macaulaylibrary.org/">Macaulay Library</a></li>
                                        <li id="menu-item-49" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-49"><a href="http://ravensoundsoftware.com/">&#8220;Raven&#8221; Sound Analysis</a></li>
                                        <li id="menu-item-50" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-50"><a href="https://www.youtube.com/labofornithology">Our Youtube Videos</a></li>
                                        <li id="menu-item-51" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-51"><a href="https://www.allaboutbirds.org/news/browse/topic/faqs/">FAQs</a></li>
                                    </ul>
                                </li>
                                <li id="menu-item-19259" class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-19259"><a href="https://join.birds.cornell.edu/ea-action/action?ea.client.id=1806&#038;ea.campaign.id=28635&#038;ea.tracking.id=WEB">Support Our Cause</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-19260" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-19260"><a href="https://join.birds.cornell.edu/ea-action/action?ea.client.id=1806&#038;ea.campaign.id=28635&#038;ea.tracking.id=WEB">Join the Lab</a></li>
                                        <li id="menu-item-19261" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-19261"><a href="https://give.birds.cornell.edu/page/87895/donate/1?ea.tracking.id=AAF">Donate</a></li>
                                        <li id="menu-item-20248" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-20248"><a href="https://give.birds.cornell.edu/page/99134/donate/1?ea.tracking.id=WXXXXX01C&#038;utm_source=BCE&#038;utm_medium=Website&#038;utm_campaign=Evergreen-Sustainer&#038;utm_content=home-page">Monthly Giving</a></li>
                                        <li id="menu-item-20247" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-20247"><a href="https://www.birds.cornell.edu/home/members/">Membership Services</a></li>
                                        <li id="menu-item-19262" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-19262"><a href="https://www.birds.cornell.edu/home/shop-for-our-cause/">Shop for Our Cause</a></li>
                                    </ul>
                                </li>
                            </ul> </nav>
                    </div>
                    <div class="footer-contact grid-x">
                        <div class="cell medium-2 small-6 cu-logo">
                            <img alt="Cornell University" data-src="https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/images/cornell-logo.svg" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="><noscript><img src="https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/images/cornell-logo.svg" alt="Cornell University"></noscript>
                        </div>
                        <div class="cell medium-auto small-12 flex-child-grow contact">
                            <div class="social hide-for-print">
                                <ul class="social-icons"><li class="twitter"><a href="https://twitter.com/cornellbirds" title="Follow us on Twitter"><span class="fab fa-twitter"></span></a></li><li class="facebook"><a href="https://facebook.com/cornellbirds" title="Like us on Facebook"><span class="fab fa-facebook-f"></span></a></li></ul> </div>
                            <div class="menu-aab-footer-contact-list-container"><ul id="contact-nav" class="menu hide-for-print"><li id="menu-item-41535" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41535"><a href="https://www.birds.cornell.edu/home/contact-us/">Contact Us</a></li>
                                    <li id="menu-item-46188" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-46188"><a href="https://www.birds.cornell.edu/home/web-accessibility-assistance/">Web Accessibility Assistance</a></li>
                                    <li id="menu-item-41536" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41536"><a href="https://privacy.cornell.edu/information-use-cornell">Privacy Policy</a></li>
                                    <li id="menu-item-41537" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41537"><a href="https://www.birds.cornell.edu/home/terms-of-use/">Terms of use</a></li>
                                    <li id="menu-item-41538" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-41538"><a href="/news/site-credits/">Site Credits</a></li>
                                </ul></div>
                            <p class="source-org copyright">&copy; 2023 Cornell University</p>
                        </div>
                    </div>
                </div> 
            </footer> 
        </div>

        <div class="reveal" id="search-modal" data-reveal role="dialog" data-animation-in="fade-in fast" aria-label="Search">
            <button class="close-button" data-close aria-label="Close" type="button"><span class="text">Cancel</span> <span class="symbol" aria-hidden="true">&times;</span></button>
            <div class="search-container">
                <div class="search-area row">
                    <form role="search" method="get" class="search-form" action="/news/search/">
                        <span class="fa fa-search" aria-hidden="true"></span>
                        <label for="modal-search" class="sr-only">Search for species name or keywords</label>
                        <input id="modal-search" type="search" class="search-field" placeholder="Enter species name or keyword" value="" name="q" title="Search for:" />
                        <input type="submit" class="search-submit button" value="Search" />
                    </form>
                </div>
            </div>
            <div class="content-container page-wider">
                <p>Or Browse Bird Guide by <a href="/guide/browse/taxonomy" target="_self">Family</a> or <a href="/guide/browse" target="_self">Shape</a></p>
            </div>
            <section class="gray-bar-promotion" aria-label="Try Merlin">
                <div class="merlin-cta">
                    <p>Need Bird ID Help?
                        <a role="button" class="button" tabindex="0" href="javascript:void(0);" data-open="merlin-id">Try Merlin</a></p>
                </div>
            </section>
        </div>


        <div class="reveal" id="newsletter-modal" data-reveal role="dialog" data-animation-in="fade-in fast" data-v-offset="0" aria-label="Newsletter Sign Up">
            <button class="close-button" data-close aria-label="Close" type="button"><span class="text">Cancel</span> <span class="symbol" aria-hidden="true">&times;</span></button>
            <div class="content">
                <h2 class="has-text-align-center">Don't miss a thing! Join our email list</h2>
                <p class="has-text-align-center">The Cornell Lab will send you updates about birds, <br>birding, and opportunities to help bird conservation.</p>
                <p><div class="hubspot-news">
                    <script type="text/javascript" charset="utf-8" src="//js.hsforms.net/forms/current.js"></script>
                    <script type="text/javascript">
                                            hbspt.forms.create({
                                                portalId: '95627',
                                                formId: 'de085739-e692-431e-b987-0736c9c7e87a',
                                                target: '.hubspot-news'
                                            });
                    </script>
                </div></p>
                <div class="hubspot-news"></div> </div>
        </div>



        <section class="reveal merlin-web-interact" id="merlin-id" data-reveal role="dialog" data-animation-in="slide-in-right fast" data-animation-out="slide-out-right fast" data-v-offset="0" aria-label="Merlin Web">
            <div class="close-bar">
                <button class="close-button" data-close aria-label="Close Merlin bird ID" type="button"><span class="symbol" aria-hidden="true">&times;</span> Close Merlin</button>
            </div>
        </section>

        <noscript><iframe 
            height="0" width="0" style="display:none;visibility:hidden" data-src="//www.googletagmanager.com/ns.html?id=GTM-P7854M" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="></iframe></noscript>
        <link rel="stylesheet" href=https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.min.css>
        <script type="text/javascript" src="https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.js"></script>
        <script type="text/javascript">
                                            var clo_lightbox = new CLO_Lightbox();
                                            clo_lightbox.create('aab', 'aabnews', window.location.pathname, 'live');
        </script> <script>
            (function (body) {
                'use strict';
                body.className = body.className.replace(/\btribe-no-js\b/, 'tribe-js');
            })(document.body);
        </script>
        <script> /* <![CDATA[ */var tribe_l10n_datatables = {"aria": {"sort_ascending": ": activate to sort column ascending", "sort_descending": ": activate to sort column descending"}, "length_menu": "Show _MENU_ entries", "empty_table": "No data available in table", "info": "Showing _START_ to _END_ of _TOTAL_ entries", "info_empty": "Showing 0 to 0 of 0 entries", "info_filtered": "(filtered from _MAX_ total entries)", "zero_records": "No matching records found", "search": "Search:", "all_selected_text": "All items on this page were selected. ", "select_all_link": "Select all pages", "clear_selection": "Clear Selection.", "pagination": {"all": "All", "next": "Next", "previous": "Previous"}, "select": {"rows": {"0": "", "_": ": Selected %d rows", "1": ": Selected 1 row"}}, "datepicker": {"dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"], "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesShort": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesMin": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "nextText": "Next", "prevText": "Prev", "currentText": "Today", "closeText": "Done", "today": "Today", "clear": "Clear"}};/* ]]> */</script><style>.wp-block-gallery.wp-block-gallery-1{ --wp--style--unstable-gallery-gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) ); gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) )}</style>
        <style>.wp-block-gallery.wp-block-gallery-3{ --wp--style--unstable-gallery-gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) ); gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) )}</style>
        <style>.wp-block-gallery.wp-block-gallery-5{ --wp--style--unstable-gallery-gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) ); gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) )}</style>
        <style id='core-block-supports-inline-css' type='text/css'>
            .wp-block-buttons.wp-container-7{justify-content:center;}
        </style>

        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/plugins/disqus-comment-system/public/js/comment_embed.js?ver=3.0.22' id='disqus_embed-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/plugins/wp-smush-pro/app/assets/js/smush-lazy-load.min.js?ver=3.12.3' id='smush-lazy-load-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/scripts/foundation.min.js?ver=6.1.1' id='foundation-js-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/scripts/slick.min.js?ver=6.1.1' id='slick-js-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/scripts/scripts.js?ver=1684242136' id='bp-site-js-js'></script>
        <script type='text/javascript' src='https://code.jquery.com/ui/1.12.1/jquery-ui.min.js' id='jquery-ui-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2-aab/scripts/scripts.js?ver=1684847008' id='bp-aab-site-js-js'></script>
        <script type='text/javascript' src='https://js.hscta.net/cta/current.js' id='hubspot-cta-js'></script>
    </body>
</html>
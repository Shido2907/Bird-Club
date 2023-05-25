jQuery(document).foundation();

jQuery(document).ready(function() {
'use strict';

/**
 * Sticky navigation
 */  

  // Get height of header
  var headerElem = document.getElementById('main-nav-header');
  var headerWrapper = document.getElementById('header-wrapper');

  function headerHeight() {
  var navHeight = headerWrapper.offsetHeight;
    headerElem.style.height = navHeight + 'px';
  }
  jQuery(window).on('load resize', function(){ 
    if (!jQuery('body').hasClass('scroll')) {
      headerHeight();
    }
  });


  //Add scroll class to body for sticky functionalities
  var stickyElem = jQuery('#header-wrapper');
  var stickAtElem = jQuery('.website-nav-container');
  if (stickyElem.length) {
      var	pos = stickAtElem.offset().top,
          win = jQuery(window),
          body = jQuery('body');
      win.on('scroll load', function() {
          win.scrollTop() >= pos ? body.addClass('scroll') : body.removeClass('scroll');
      });
  }

/** 
 * Hero Video
 * The rest of the code for videos is in /parts/bp-hero.php
 */
  var heroVideo = jQuery('#video-hero-player'),
  heroTranscript = jQuery('#hero-transcript');
  if (heroVideo) {
    jQuery('#hero-wrapper .play-video').on('click', function(){
      heroVideoPlay();
    });
    jQuery('#hero-wrapper .play-video').on('keydown', function(e){
      if (e.which == 13) {
        heroVideoPlay();
      }
    });
  }

/** 
 * Gallery Slideshow
 */
  jQuery('.gallery-slideshow.has-nested-images, .gallery-slideshow>ul').slick({
    // slide: 'div:has(.wp-block-image)',
    arrows: true,
    nextArrow: '<button class="fas fa-angle-right slick-next"><span class="sr-only">Next</span></button>',
    prevArrow: '<button class="fas fa-angle-left slick-prev"><span class="sr-only">Previous</span></button>',
    dots: true,
    infinite: false,
    adaptiveHeight: true,
    lazyLoad: 'ondemand',
    lazyLoaded: function() {
      console.log('loaded');
    }
  });

  var secondaryNav = document.getElementById("bp-secondary-nav");
  if (jQuery("#bp-secondary-nav").length && jQuery('#bp-secondary-nav .current-menu-item').length) {
    // Mobile Scroll into view  
    var secondaryNavItem =  jQuery('#bp-secondary-nav .current-menu-item').attr('id');
    var secondaryNavId = document.getElementById(secondaryNavItem);
    var secondaryNavInView = false;

    secondaryNavId.scrollIntoView({block: "nearest", inline: "nearest"}); 

    // Enable scrolling on desktop
    let isDown = false;
    let startX;
    let scrollLeft;

    secondaryNav.addEventListener("mousedown", e => {
      isDown = true;
      secondaryNav.classList.add("active");
      startX = e.pageX - secondaryNav.offsetLeft;
      scrollLeft = secondaryNav.scrollLeft;
    });
    secondaryNav.addEventListener("mouseleave", () => {
      isDown = false;
      secondaryNav.classList.remove("active");
    });
    secondaryNav.addEventListener("mouseup", () => {
      isDown = false;
      secondaryNav.classList.remove("active");
    });
    secondaryNav.addEventListener("mousemove", e => {
      if (!isDown) return;
      e.preventDefault();
      const x = e.pageX - secondaryNav.offsetLeft;
      const walk = x - startX;
      secondaryNav.scrollLeft = scrollLeft - walk;
    });
  }


/** 
 * Article List Carousel
 */
  if (jQuery('.article-list.card-display.carousel').length) {
    jQuery('.article-list.card-display.carousel').each(function(){
      var carousel = jQuery(this);
      var slidesToShow = 4;
      var slidesToShowMedium = 3;
      var slidesToShowSmall = 2;
      if (carousel.hasClass('card-one')) { var slidesToShow = 1; var slidesToShowMedium = 1; var slidesToShowSmall = 1; }
      else if (carousel.hasClass('card-two')) { var slidesToShow = 2; var slidesToShowMedium = 2; }
      else if (carousel.hasClass('card-three')) { var slidesToShow = 3; }
      else if (carousel.hasClass('card-five')) { var slidesToShow = 5; }
      carousel.find('>ul').slick({
        arrows: true,
        nextArrow: '<button class="fas fa-angle-right slick-next"><span class="sr-only">Next</span></button>',
        prevArrow: '<button class="fas fa-angle-left slick-prev"><span class="sr-only">Previous</span></button>',
        dots: true,
        infinite: false,
        adaptiveHeight: true,
        lazyLoad: 'ondemand',
        slidesToShow: slidesToShow,
        responsive: [
          {
            breakpoint: 860,
            settings: {
              slidesToShow: slidesToShowMedium
            }
          },
          {
            breakpoint: 700,
            settings: {
              slidesToShow: slidesToShowSmall
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1
            }
          }
        ],
        lazyLoaded: function() {
          console.log('loaded');
        }
      });
    });
  }


/** 
 * Accessibility
 */

  //Focus on search input when modal is opened
  jQuery('#search-modal').on('open.zf.reveal', function () {
      setTimeout(function(){
          jQuery('#modal-search').trigger('focus');
      }, 500);
  });
  
  //Focus on content with skip link
  jQuery('a.skip-main').each(function(){
      jQuery(this).on('click', function(e){
          var target = jQuery(this).attr('href');
          jQuery(target).attr('tabindex', '0').trigger('focus');
          return false;
      });
  });

  //Focus on hustle pro modal when opened
  jQuery(document).on("hustle:module:displayed", function (){
      console.log('HUSTLE');
      jQuery('.hustle-button-close').trigger('focus');
  });
    
  //Add class to body for tabbing focus styles
  function handleFirstTab(e) {
    if (e.keyCode === 9) {
      document.body.classList.remove('mouse-user');
      
      window.removeEventListener('keydown', handleFirstTab);
      window.addEventListener('mousedown', handleMouseDownOnce);
    }
  }
  
  function handleMouseDownOnce() {
    document.body.onmousedown = function() { 
        document.body.classList.add('mouse-user');
    
        window.removeEventListener('mousedown', handleMouseDownOnce);
        window.addEventListener('keydown', handleFirstTab);
    }
  }
  
  window.addEventListener('mousemove', handleMouseDownOnce);
          
/** 
 * Accessible Dropdown menu
 */ 
  function dropdownMenu() {
    jQuery('li.menu-item.menu-item-has-children').each(function(el, i){
      var thisMenuItem = jQuery(this),
          timer;

      // OPEN or CLOSE menu on click of button
      thisMenuItem.find('button').on("click", function(event){
        thisMenuItem.siblings('li').removeClass('open');
        if (thisMenuItem.hasClass('open')) {
          thisMenuItem.removeClass('open').children('button').attr('aria-expanded', "false");
          setTimeout(function() {
            thisMenuItem.children('.sub-menu').addClass('hidden').attr('aria-hidden', 'true');
          }, 100);
        } else {
          thisMenuItem.children('.sub-menu').removeClass('hidden').attr('aria-hidden', 'false');
          setTimeout(function() {
            thisMenuItem.addClass('open').children('button').attr('aria-expanded', "true");
            thisMenuItem.children('.sub-menu').removeClass('hidden');
          }, 100);
        }
        event.preventDefault();
      });
    });
  } // end dropdownMenu()
  dropdownMenu();

  // Close dropdown menu on outside click
  var menu = jQuery('#primary-nav');
  jQuery(document).mouseup(function(e){
    if (!menu.is(e.target) && menu.has(e.target).length === 0) {
      jQuery('li.open').removeClass('open')
                        .children('button').attr('aria-expanded', "false");
    }
  });

  //Menu active states
  jQuery('#primary-nav').find('a').each(function(){
      if((window.location.pathname.indexOf(jQuery(this).attr('href'))) > -1){
          jQuery(this).parent('li').addClass('current-menu-item').parents('li.menu-item').addClass('current-menu-item');
      }
  });

  //Secondary nav button active state
  jQuery('.secondary-nav-toggle, .tertiary-nav-toggle').on('toggled.zf.responsiveToggle', function(){
    jQuery(this).toggleClass('open');
  });

  /** Detect IE */
  if (ieVersion() < 12 && ieVersion() > 5) {
    jQuery('body').addClass('msie').append('<section aria-label="Upgrade your browser" id="browser-upgrade"><p>You are using an <strong>outdated</strong> browser. <br />Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience.</p></section>')
  }
  function ieVersion(uaString) {
    uaString = uaString || navigator.userAgent;
    var match = /\b(MSIE |Trident.*?rv:|Edge\/)(\d+)/.exec(uaString);
    if (match) return parseInt(match[2])
  }

  // Add title to Vimeo videos that do not have one
  var vimeoPlayer = jQuery('iframe[data-src*="vimeo"]');
  if (vimeoPlayer.length > 0) {
    vimeoPlayer.each(function() {
      if (!jQuery(this).attr('title')) {
        jQuery(this).attr('title', 'Vimeo video');
      }
    });
  }


}); 

/** 
 * Article list fake image link
 */ 
 document.addEventListener("DOMContentLoaded", function () {
  var linkTo = document.querySelectorAll("[data-link-to]");
  linkTo && Array.prototype.forEach.call(linkTo, function (linkTo) {
    if ("" != linkTo.dataset.linkTo) {
        var e = linkTo.dataset.linkTo;
        linkTo.addEventListener("click", function (linkTo) {
          if (linkTo.shiftKey) window.open = e;
          else if (linkTo.metaKey) {
            var n = document.createElement("a");
            (n.href = e), n.setAttribute("target", "_blank"), n.click();
          } else window.location = e;
        });
        linkTo.addEventListener("auxclick", function (linkTo) {

            var n = document.createElement("a");
            (n.href = e), n.setAttribute("target", "_blank"), n.click();

        });
    }
  });
});

/** 
 * Anchor navigation active links
 */ 
var anchorNav = document.getElementById("bp-tertiary-nav");
if (typeof(anchorNav) != 'undefined' && anchorNav != null) {

  function activeAnchorNav() {
    var scrollDistance = jQuery(window).scrollTop() + 60;
    var winHeight = jQuery(window).height();
    // Assign active class to nav links while scolling
    jQuery('#bp-tertiary-nav li a').each(function(){
      thisID = jQuery(this).attr('href');
      posTopElem = jQuery(thisID).position().top;  
      if (posTopElem <= scrollDistance) {
        jQuery('#bp-tertiary-nav li.active').removeClass('active');
        jQuery(this).parent('li').addClass('active');
      }
      else if (posTopElem > winHeight) {
        jQuery(this).parent('li').removeClass('active');
      }
    });

    if (winHeight > scrollDistance) {
      jQuery('.tertiary-nav-container .top-link').addClass('hide').attr('aria-hidden','true').attr('tabindex','-1');
    } else {
      jQuery('.tertiary-nav-container .top-link').removeClass('hide').attr('aria-hidden','false').attr('tabindex','0');
    }
  }

  window.addEventListener('scroll', activeAnchorNav);

  jQuery(document).ready(function() {
    jQuery('#bp-tertiary-nav li a[href*=#]').bind('click', function(e) {

      // Remove scrolling listener, add class to clicked nav item
      window.removeEventListener('scroll', activeAnchorNav);
      jQuery('#bp-tertiary-nav li.active').removeClass('active');
      jQuery(this).parent('li').addClass('active');
      
      // Add scroll listener back after scrolling finishes
      clearTimeout(jQuery.data(this, 'scrollTimer'));
      jQuery.data(this, 'scrollTimer', setTimeout(function() {
        window.addEventListener('scroll', activeAnchorNav);
        console.log('stop')
      }, 1000));
    });
  });
}
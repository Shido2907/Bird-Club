  /**
   * Accessibility
   */
  // Hustle Pro Accessibility fixes
  // Focus on hustle pro modal when opened
  jQuery(document).on("hustle:module:displayed", function (){
    jQuery('.hustle-button-close').focus();
  });

  // Focus on skip content link when hustle pro modal is closed
  jQuery(document).on("hustle:module:closed", function (){
    if (!jQuery('body').hasClass('mouse-user')) {
      jQuery('#main-content').focus();
    }
  });

  //Events Calendar Accessibility fixes
    // Add title map iframe
    var mapIframe = jQuery('iframe[data-src*="google"]');
    if (mapIframe.length > 0) {
      mapIframe.each(function() {
        jQuery(this).attr('title', 'View location in Google Maps');
      });
    }

  /**
   * Autocomplete and Search
   */ 
  jQuery("#q").autocomplete({
      source: function( request, response ) {
      jQuery.getJSON("https://vl3oj3lqpf.execute-api.us-east-1.amazonaws.com/live/api/getAutocomplete/" + request.term, function(result){
      response(jQuery.map(result, function( item ) {
          return {
              label: item.common_name,
              value: item.common_name
          };
      }));
    });
   },
    minLength: 1
  });
  // prevent the default behavior when a user taps once on an item in
  // the search modal autocomplete dropdown
  jQuery('#q').on('autocompletefocus', function() {
  });
  
  // require only single click on iOS to select an item from
  // autocomplete dropdown list
  jQuery('#q').on('autocompleteopen', function(event, ui) {
    jQuery('.ui-autocomplete').off('menufocus hover mouseover mouseenter');
  });
  
  jQuery('#q').on('autocompleteselect', function(event, ui) {
    location = 'https://www.allaboutbirds.org/guide/' + ui.item.value.replace(/ /g, '_').replace("'", '');
  });
  
  jQuery("#modal-search").autocomplete({
      source: function( request, response ) {
      jQuery.getJSON("https://vl3oj3lqpf.execute-api.us-east-1.amazonaws.com/live/api/getAutocomplete/" + request.term, function(result){
        response(jQuery.map(result, function( item ) {
          return {
              label: item.common_name,
              value: item.common_name
          };
      }));
    });
   },
    minLength: 1
  });
  // prevent the default behavior when a user taps once on an item in
  // the search modal autocomplete dropdown
  jQuery('#modal-search').on('autocompletefocus', function() {
  
  });
  
  // require only single click on iOS to select an item from
  // autocomplete dropdown list
  jQuery('#modal-search').on('autocompleteopen', function(event, ui) {
    jQuery('.ui-autocomplete').off('menufocus hover mouseover mouseenter');
  });
  
  jQuery('#modal-search').on('autocompleteselect', function(event, ui) {
    location = 'https://www.allaboutbirds.org/guide/' + ui.item.value.replace(/ /g, '_').replace("'", '');
  });
  jQuery('.reveal').on('open.zf.reveal', function() {
    // place the cursor in the search box when the search modal is
    // revealed
    setTimeout(function(){
      jQuery('#modal-search').focus()
    }, 500);
  });

  function modalHandleKeyPress(e){
   var key=e.keyCode || e.which;
    if (key==13){
       location = '/home/search/?q=' + jQuery('#modal-search').val();
    }
  }
  function modalHandleSubmit(e){
    location = '/home/search/?q=' + jQuery('#modal-search').val();
  }
  function searchPageHandleKeyPress(e){
   var key=e.keyCode || e.which;
    if (key==13){
       location = '/home/search/?q=' + jQuery('#q').val();
    }
  }
  function searchPageHandleSubmit(e){
      location = '/home/search/?q=' + jQuery('#q').val();
  }

  //end Autocomplete

  // Donate tracking links
  postSlug = wp_post_vars.postSlug; // retreive slug from functions.php wp_localize_script
  if(postSlug.length > 100) postSlug = postSlug.substring(0,100); // trim if more than 100 chars
  jQuery('ul li a[rel=tracking]').each(function(){
    if (jQuery(this).attr('href').indexOf("?") > -1) {
      jQuery(this).attr('href',function(i,str) {
        // return str + '&utm_content='+encodeURIComponent(document.title);
        return str + '&utm_content='+ postSlug;
      });
    } else {
      jQuery(this).attr('href',function(i,str) {
        // return str + '?&utm_content='+encodeURIComponent(document.title);
        return str + '?&utm_content='+ postSlug;
      });
    }
  });  

/** 
 * Accessible tabs
 * This content is licensed according to the W3C Software License at
 * https://www.w3.org/Consortium/Legal/2015/copyright-software-and-document
*/
(function () {
  var tablist = document.querySelectorAll('[role="tablist"]')[0];
  var tabs;
  var panels;
  var delay = 0;

  generateArrays();

  function generateArrays () {
    tabs = document.querySelectorAll('[role="tab"]');
    panels = document.querySelectorAll('[role="tabpanel"]');
  };

  // For easy reference
  var keys = {
    end: 35,
    home: 36,
    left: 37,
    up: 38,
    right: 39,
    down: 40,
    delete: 46
  };

  // Add or substract depending on key pressed
  var direction = {
    37: -1,
    38: -1,
    39: 1,
    40: 1
  };

  // Bind listeners
  for (i = 0; i < tabs.length; ++i) {
    addListeners(i);
  };

  function addListeners (index) {
    tabs[index].addEventListener('click', clickEventListener);
    tabs[index].addEventListener('keydown', keydownEventListener);
    tabs[index].addEventListener('keyup', keyupEventListener);

    // Build an array with all tabs (<button>s) in it
    tabs[index].index = index;
  };

  // When a tab is clicked, activateTab is fired to activate it
  function clickEventListener (event) {
    var tab = event.target;
    activateTab(tab, false);
  };

  // Handle keydown on tabs
  function keydownEventListener (event) {
    var key = event.keyCode;

    switch (key) {
      case keys.end:
        event.preventDefault();
        // Activate last tab
        activateTab(tabs[tabs.length - 1]);
        break;
      case keys.home:
        event.preventDefault();
        // Activate first tab
        activateTab(tabs[0]);
        break;

      // Up and down are in keydown
      // because we need to prevent page scroll >:)
      case keys.up:
      case keys.down:
        determineOrientation(event);
        break;
    };
  };

  // Handle keyup on tabs
  function keyupEventListener (event) {
    var key = event.keyCode;

    switch (key) {
      case keys.left:
      case keys.right:
        determineOrientation(event);
        break;
      case keys.delete:
        determineDeletable(event);
        break;
    };
  };

  // When a tablistâ€™s aria-orientation is set to vertical,
  // only up and down arrow should function.
  // In all other cases only left and right arrow function.
  function determineOrientation (event) {
    var key = event.keyCode;
    var vertical = tablist.getAttribute('aria-orientation') == 'vertical';
    var proceed = false;

    if (vertical) {
      if (key === keys.up || key === keys.down) {
        event.preventDefault();
        proceed = true;
      };
    }
    else {
      if (key === keys.left || key === keys.right) {
        proceed = true;
      };
    };

    if (proceed) {
      switchTabOnArrowPress(event);
    };
  };

  // Either focus the next, previous, first, or last tab
  // depening on key pressed
  function switchTabOnArrowPress (event) {
    var pressed = event.keyCode;

    for (x = 0; x < tabs.length; x++) {
      tabs[x].addEventListener('focus', focusEventHandler);
    };

    if (direction[pressed]) {
      var target = event.target;
      if (target.index !== undefined) {
        if (tabs[target.index + direction[pressed]]) {
          tabs[target.index + direction[pressed]].focus();
        }
        else if (pressed === keys.left || pressed === keys.up) {
          focusLastTab();
        }
        else if (pressed === keys.right || pressed == keys.down) {
          focusFirstTab();
        };
      };
    };
  };

  // Activates any given tab panel
  function activateTab (tab, setFocus) {
    setFocus = setFocus || true;
    // Deactivate all other tabs
    deactivateTabs();

    // Remove tabindex attribute
    tab.removeAttribute('tabindex');

    // Set the tab as selected
    tab.setAttribute('aria-selected', 'true');

    // Get the value of aria-controls (which is an ID)
    var controls = tab.getAttribute('aria-controls');

    // Remove hidden attribute from tab panel to make it visible
    document.getElementById(controls).classList.remove('mobile-hidden');

    // Set focus when required
    if (setFocus) {
      tab.focus();
    };
  };

  // Deactivate all tabs and tab panels
  function deactivateTabs () {
    for (t = 0; t < tabs.length; t++) {
      tabs[t].setAttribute('tabindex', '-1');
      tabs[t].setAttribute('aria-selected', 'false');
      tabs[t].removeEventListener('focus', focusEventHandler);
    };

    for (p = 0; p < panels.length; p++) {
      panels[p].classList.add('mobile-hidden');
    };
  };

  // Make a guess
  function focusFirstTab () {
    tabs[0].focus();
  };

  // Make a guess
  function focusLastTab () {
    tabs[tabs.length - 1].focus();
  };

  // Detect if a tab is deletable
  function determineDeletable (event) {
    target = event.target;

    if (target.getAttribute('data-deletable') !== null) {
      // Delete target tab
      deleteTab(event, target);

      // Update arrays related to tabs widget
      generateArrays();

      // Activate the closest tab to the one that was just deleted
      if (target.index - 1 < 0) {
        activateTab(tabs[0]);
      }
      else {
        activateTab(tabs[target.index - 1]);
      };
    };
  };

  // Deletes a tab and its panel
  function deleteTab (event) {
    var target = event.target;
    var panel = document.getElementById(target.getAttribute('aria-controls'));

    target.parentElement.removeChild(target);
    panel.parentElement.removeChild(panel);
  };

  function focusEventHandler (event) {
    var target = event.target;

    setTimeout(checkTabFocus, delay, target);
  };

  // Only activate tab on focus if it still has focus after the delay
  function checkTabFocus (target) {
    focused = document.activeElement;

    if (target === focused) {
      activateTab(target, false);
    };
  };
}());
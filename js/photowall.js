jQuery(window).load(function() {
  //console.log('window load');
  dataInterChangeSwitch();
  jQuery.each(jQuery("div.article-item-media"), function(i,item) {
      jQuery(item).css('height', jQuery(item).width() * 0.75);
  });
  // windowResizeSetCardHeights();
  /*if(jQuery(window).width() > 666){
    jQuery.each(jQuery('.article-list.card-display'), function(i, item) {
      var maxHeight = -1;
      jQuery(item).find('.article-item').each(function() {
          if (jQuery(this).height() > maxHeight) {
              maxHeight = jQuery(this).height();
          }
      });
      jQuery(item).find('.article-item').height(maxHeight);
    });
  }*/
})
jQuery.fn.isInViewport = function() {
    var elementTop = jQuery(this).offset().top;
    var elementBottom = elementTop + jQuery(this).outerHeight();

    var viewportTop = jQuery(window).scrollTop();
    var viewportBottom = viewportTop + jQuery(window).height();

    return elementBottom > viewportTop && elementTop < viewportBottom;
};
function windowResizeSetCardHeights() {
  //console.log('windowResizeSetCardHeights');
  if(jQuery(window).width() > 666){
    jQuery.each(jQuery('.article-list.card-display'), function(i, item) {
      var maxHeightResize = -1;
      jQuery(item).find('.article-item').each(function() {
          jQuery(this).css('min-height', '0');
          jQuery(this).css('max-height', 'none');
          jQuery(this).css('height', 'auto');
          if (jQuery(this).height() > maxHeightResize) {
              maxHeightResize = jQuery(this).height();
          }
      });
      jQuery(item).find('.article-item').each(function() {
        jQuery(this).css('height', maxHeightResize + 'px');
      });
    });
  }
  else {
    jQuery.each(jQuery('.article-list.card-display'), function(i, item) {
      jQuery(item).find('.article-item').height('auto');
    });
  }
}
function dataInterChangeSwitch() {
  //console.log('dataInterChangeSwitch');
  jQuery.each(jQuery('img[data-preinterchange]').not('.nGY2GThumbnailImg'), function(i,item) {
    if ( jQuery(item).isInViewport() ){
      flag = true;
      jQuery(item).attr('data-interchange',jQuery(item).attr('data-preinterchange'));
      jQuery(item).removeAttr('data-preinterchange');
      jQuery(item).foundation();
      // windowResizeSetCardHeights();
    }
  });
  jQuery.each(jQuery('.background-image[data-preinterchange]'), function(i,item) {
    if(jQuery(item).isInViewport()){
        jQuery(item).attr('data-interchange',jQuery(item).attr('data-preinterchange'));
        jQuery(item).removeAttr('data-preinterchange');
        jQuery(item).foundation();
    }
  });
}
jQuery(window).scroll(function(){
    dataInterChangeSwitch();
    //windowResizeSetCardHeights();
    //ML photowall stuff
    if ( jQuery('#macaulay-library-photowall').length ) {
    if ( jQuery('#macaulay-library-photowall').isInViewport() && !jQuery('#my_nanogallery2').hasClass('filled') ){
      jQuery.getJSON( "https://search.macaulaylibrary.org/api/v1/stats/ml/front" )
      .done(function( data ) {
        jQuery('#mlPhotoWallHeader').append('A wildlife media archive with ' + data.totalAssetCount.toLocaleString('en') + ' photos, sounds, and videos from around the world.');
      })
      .fail(function (jqxhr, textStatus, error ) {
      var err = textStatus + ", " + error;
      console.log("ML Request Failed: " + err);
      });
    jQuery('#my_nanogallery2').addClass('filled');
    jQuery.getJSON( "https://search.macaulaylibrary.org/api/v1/search?mediaType=p&dsu=14&sort=rating_rank_desc&count=20" )
      .done(function( data ) {
        var photoArray = [];
        jQuery.each(data.results.content, function(i, item) {
          photoArray.push({destURL: item.specimenUrl, src: item.catalogId + "/1200", srct: item.catalogId + "/320", title: item.subjectData[0].comName + " © " + item.userDisplayName}); 
        });
        jQuery("#my_nanogallery2").nanogallery2({
         // ### gallery settings ###
          thumbnailOpenImage: false,
          thumbnailWidth: 'auto',
          thumbnailBorderVertical: 0,
          thumbnailBorderHorizontal: 0,
          thumbnailLabel: {
            titleFontSize: '.8em'
          },
          thumbnailAlignment: 'center',
          thumbnailGutterWidth: 1,
          thumbnailGutterHeight: 1,
          thumbnailHoverEffect2: 'labelAppear75',
          galleryDisplayMode: 'pagination',
          galleryMaxRows: 3,
          itemsBaseURL: 'https://cdn.download.ams.birds.cornell.edu/api/v1/asset/',
          // ### gallery content ###
          items: photoArray,
          // ### gallery callbacks for accessibility ###
          fnThumbnailInit: function ($elt, item) {
            // set for accessibility 
            $elt.attr("role", "button").attr("tabindex", "0");
            $elt.on('keypress', function () {
              var code = event.charCode || event.keyCode;
              if ((code === 32) || (code === 13)) {
                window.location = item.destinationURL;
              }
            });
            // add new alt
            var eltImg = $elt.find("img");
            eltImg.attr("alt", "View "+item.title);
          },
        });



        function galleryAccessibility(){ 
          alert('loaded');
          jQuery(".nGY2GThumbnail").each(function(i,item){
            jQuery(item).attr("role", "button");
          });
        }

      })
      .fail(function( jqxhr, textStatus, error ) {
        var err = textStatus + ", " + error;
        console.log( "ML Request Failed: " + err );
      });
    }
  }
});
jQuery(document).ready(function(){
  //console.log('document ready');
  jQuery("#my_nanogallery2").attr("data-nanogallery2", jQuery("#my_nanogallery2").attr("data-nanogallery"));
  jQuery(".hidden-left-menu-close").attr('aria-label','Close menu');
  jQuery(".hidden-left-menu-close").attr('data-close','');
  jQuery(".modal-search").attr('data-open','search-modal');
  //undo setting the height on all article list items from bp vanilla
  //jQuery.each(jQuery("div.article-item-media"), function(i,item) {
  //    jQuery(item).removeAttr('style');
  //});
  jQuery.each(jQuery("div.article-item-media.staff-search-photo"), function(i,item) {
        jQuery(item).removeAttr('style');
  });
  //dataInterChangeSwitch();
});
jQuery(window).resize(function () {
    //console.log('window resize');
    jQuery.each(jQuery("div.article-item-media"), function(i,item) {
        jQuery(item).removeAttr('style');
    });
    // windowResizeSetCardHeights();
});
jQuery('.see_more_articles').click(function(event) {
  jQuery(this).hide();
  jQuery(this).parent('ul').children('.article-item').show();
});

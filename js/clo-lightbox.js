// Initializing a constructor function
function CLO_Lightbox() {
}
// Adding a method to the constructor
CLO_Lightbox.prototype.create = function(domain, site, permalink, branch) {
	var hubSpotScript = document.createElement('script');
	hubSpotScript.setAttribute('src','https://js.hscta.net/cta/current.js');
	document.head.appendChild(hubSpotScript);
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();

	today = yyyy + mm + dd;

	var isHomepage = false;
	if(permalink === '/'){
		isHomepage = true;
	}

	var apiEndpoint = "https://lightbox.allaboutbirds.org/wp-json/wp/v2/lightboxes/?currentDate=" + today + "&_fields=title,acf&acf_format=standard";
	if(branch == 'dev'){
		apiEndpoint = "https://clolightboxdev.wpengine.com/wp-json/wp/v2/lightboxes/?currentDate=" + today + "&_fields=title,acf&acf_format=standard"
	}

	fetch(apiEndpoint)
		.then(response => {
			if (response.ok) {
				return response.json();	
			}
			throw new Error('Error contacting lightbox server');
		})
		.then(data => {
			shuffleArray(data);
			var showLightbox = false;
			var lightbox = null;
			var assignment = null;
			for (var i = 0; i < data.length; i++) {
				for (var j = 0; j < data[i].acf.assignments.length; j++){
					if((data[i].acf.assignments[j].site == site || data[i].acf.assignments[j].site == domain)){
						var tdate = new Date();
						var year        = data[i].acf.assignments[j].start_date.substring(0,4);
						var month       = data[i].acf.assignments[j].start_date.substring(4,6);
						var day         = data[i].acf.assignments[j].start_date.substring(6,8);
						var sdate        = new Date(year, month-1, day);
						year        = data[i].acf.assignments[j].end_date.substring(0,4);
						month       = data[i].acf.assignments[j].end_date.substring(4,6);
						day         = data[i].acf.assignments[j].end_date.substring(6,8);
						var edate        = new Date(year, month-1, day);
						tdate.setHours(0,0,0,0);
						edate.setHours(0,0,0,0);
						sdate.setHours(0,0,0,0);
						if(sdate <= tdate && edate >= tdate) {
							if(data[i].acf.assignments[j].siteorpage == 'site'){
								var excluded = false;
								if(data[i].acf.assignments[j].page_exclusions){
									for(var z = 0; z < data[i].acf.assignments[j].page_exclusions.length; z++){
										//if(data[i].acf.assignments[j].page_exclusions[z].permalink == permalink){
										//	excluded = true;
										//}
										if(data[i].acf.assignments[j].page_exclusions[z].permalink == '' && isHomepage == true){
											excluded = true;
										}
										else if(permalink.toLowerCase().includes(data[i].acf.assignments[j].page_exclusions[z].permalink.toLowerCase())){
											excluded = true;
										}
									}
								}
								if(!excluded){
									showLightbox = true;
									lightbox = data[i];
									assignment = data[i].acf.assignments[j];
								}
							}
							else if(data[i].acf.assignments[j].siteorpage == 'page'){
								if(data[i].acf.assignments[j].page_assignments) {
									for(var z = 0; z < data[i].acf.assignments[j].page_assignments.length; z++){
										//if(data[i].acf.assignments[j].page_assignments[z].permalink == permalink){
										if(data[i].acf.assignments[j].page_assignments[z].permalink == '' && isHomepage == true){
											showLightbox = true;
											lightbox = data[i];
											assignment = data[i].acf.assignments[j];
											break;
										}
										else if(permalink.toLowerCase().includes(data[i].acf.assignments[j].page_assignments[z].permalink.toLowerCase())){
											showLightbox = true;
											lightbox = data[i];
											assignment = data[i].acf.assignments[j];
											break;
										}
									}
								}
							}
						}
					} 
				}
			}
			if(showLightbox){
				if(branch == 'dev'){
					console.log('Frigatebird Lightbox: Show Lightbox');
					console.log('Frigatebird Lightbox: Title: ' + lightbox.title.rendered);
					console.log('Frigatebird Lightbox: Type: ' + lightbox.acf.type);
					console.log('Frigatebird Lightbox: Behavior: ' + assignment.behavior);
					console.log(lightbox);
				}
				var cloLightBoxCookieName = 'clolightboxcookie';
        var frigatebirdTypeClass = "frigatebird-popup";

				if (jQuery.cookie(cloLightBoxCookieName) != 'hide') {

          if(lightbox.acf.type == 'slidein'){
						var frigatebirdTypeClass = "frigatebird-slidein";
					}

					var frigatebirdLightbox = jQuery('<section>', {id: 'frigatebird', class: frigatebirdTypeClass, 'aria-hidden':'true', 'role': 'dialog', 'aria-label': 'Support the Cornell Lab',  'tabindex':'-1'});
					frigatebirdLightbox.appendTo( 'body' );
					jQuery('<div id="frigatebird-container"><a href="#" class="frigatebird-close" id="frigatebird-close" title="Close dialog"><span class="aria-hidden">&times;</span></a><div id="frigatebird-wrapper" class="frigatebird-content"></div></div>').appendTo(frigatebirdLightbox);

					if(lightbox.acf.type == 'slidein'){
            jQuery('<div class="frigatebird-row"><figure class="frigatebird-column media"><img src="' + lightbox.acf.background_image.url + '" alt="' + lightbox.acf.background_image.alt + '"></figure><div class="frigatebird-column content">' + lightbox.acf.html_markup + '</div></div>').appendTo('#frigatebird-wrapper');
            if (lightbox.acf.background_image.caption){ 
              jQuery('<figcaption>' + lightbox.acf.background_image.caption + '</figcaption>').appendTo('#frigatebird-wrapper figure')
            }
						// jQuery(lightbox.acf.html_markup).appendTo('#frigatebird-wrapper');
					}
					else{
						jQuery(lightbox.acf.hubspot_embed_code).appendTo('#frigatebird-wrapper');
					}
					  // hbspt.cta.load(95627, '' + noMatchBox + '', {"useNewLoader":"true","region":"na1"});

					/* 
					* Accessible code from https://www.w3.org/WAI/GL/wiki/Using_ARIA_role%3Ddialog_to_implement_a_modal_dialog_box 
					*/
					var lightboxOpen = false, lastFocus, lightbox, closebutton, pagebackground;

					function showLightbox(el) {
					  lastFocus = el || document.activeElement;
					  toggleFrigatebirdLightbox('show');
					}
					function hideLightbox(el) {
					  toggleFrigatebirdLightbox('hide');
					}

					function toggleFrigatebirdLightbox(sh) {
					  lightbox = document.getElementById("frigatebird");
					  closebutton = document.getElementById("frigatebird-close");
					  pagebackground = document.getElementById("main-container");

					  if (sh == "show") {
					    lightboxOpen = true;
					    closebutton.focus();
					    //pagebackground.setAttribute("aria-hidden","true");
					    lightbox.setAttribute("aria-hidden","false");
					    lightbox.classList.add('frigatebird-active');
					    closebutton.addEventListener("click" , function() {
						  hideLightbox();
						});
					    
					  } else {
					    lightboxOpen = false;
					    lightbox.setAttribute("aria-hidden","true");
					    lightbox.classList.remove('frigatebird-active');
					    //pagebackground.setAttribute("aria-hidden","false");
					    lastFocus.focus(); 
					  }
					}

					document.addEventListener("focus", function(event) {

					    var d = document.getElementById("frigatebird");

					    if (lightboxOpen && !d.contains(event.target)) {
					        event.stopPropagation();
					        d.focus();
					    }

					}, true);


					document.addEventListener("keydown", function(event) {
					    if (lightboxOpen && event.keyCode == 27) {
					        toggleFrigatebirdLightbox('hide');
					    }
					}, true);

					if (assignment.behavior === 'delay'){
						setTimeout(function() {
        					showLightbox();}, parseInt(assignment.delay_seconds) * 1000);
					}
					else if (assignment.behavior === 'scroll'){
					    jQuery(function(){
						    var hasBeenTrigged = false;
						    jQuery(window).scroll(function() {
						        if (jQuery(this).scrollTop() >= parseInt(assignment.scroll_pixels) && !hasBeenTrigged) { 
						            showLightbox();
						            hasBeenTrigged = true;
						        }
						    });
						});
					}

					//showLightbox();

					// // Close lightbox and set cookie when x is clicked
					jQuery('.frigatebird-close').click(function () {
					    jQuery.cookie(cloLightBoxCookieName, "hide", { expires: 1, path: '/' });
					    hideLightbox();
					});

					// Close lightbox when overlay is clicked

					if(lightbox.acf.type != 'slidein'){
            var frigatebirdLightboxWrapper = jQuery('frigatebird-wrapper');
            jQuery(document).mouseup(function(e){
              if (!frigatebirdLightboxWrapper.is(e.target) && frigatebirdLightboxWrapper.has(e.target).length === 0) {
                hideLightbox();
              }
            });
          }
				}
			}
			else{
				if(branch == 'dev'){
					console.log('Frigatebird Lightbox: No Lightbox Assigned');
				}
			}
		})
		.catch((error) => {
			console.log('Frigatebird Lightbox Error:');
			console.log(error)
		});
}

//Shuffle Array function to use if multiple lightboxes are returned
function shuffleArray(arr) {
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1)); // at random index
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
}

// jQuery Cookie
!function (e) { "function" == typeof define && define.amd ? define(["jquery"], e) : e("object" == typeof exports ? require("jquery") : jQuery) } (function (e) { function n(e) { return u.raw ? e : encodeURIComponent(e) } function o(e) { return u.raw ? e : decodeURIComponent(e) } function i(e) { return n(u.json ? JSON.stringify(e) : String(e)) } function r(e) { 0 === e.indexOf('"') && (e = e.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, "\\")); try { return e = decodeURIComponent(e.replace(c, " ")), u.json ? JSON.parse(e) : e } catch (n) { } } function t(n, o) { var i = u.raw ? n : r(n); return e.isFunction(o) ? o(i) : i } var c = /\+/g, u = e.cookie = function (r, c, a) { if (arguments.length > 1 && !e.isFunction(c)) { if (a = e.extend({}, u.defaults, a), "number" == typeof a.expires) { var f = a.expires, s = a.expires = new Date; s.setTime(+s + 864e5 * f) } return document.cookie = [n(r), "=", i(c), a.expires ? "; expires=" + a.expires.toUTCString() : "", a.path ? "; path=" + a.path : "", a.domain ? "; domain=" + a.domain : "", a.secure ? "; secure" : ""].join("") } for (var d = r ? void 0 : {}, p = document.cookie ? document.cookie.split("; ") : [], m = 0, x = p.length; x > m; m++) { var l = p[m].split("="), g = o(l.shift()), k = l.join("="); if (r && r === g) { d = t(k, c); break } r || void 0 === (k = t(k)) || (d[g] = k) } return d }; u.defaults = {}, e.removeCookie = function (n, o) { return void 0 === e.cookie(n) ? !1 : (e.cookie(n, "", e.extend({}, o, { expires: -1 })), !e.cookie(n)) } });

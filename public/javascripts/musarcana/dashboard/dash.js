$(document).ready(function() {
  $(".workspace").sortable({
    handle: '.portlet-header'
    //placeholder: 'ui-state-highlight'
  });

  $('.widget').addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" );
  $('.portlet-header').addClass( "ui-widget-header ui-corner-all label-header" )
  //.prepend( "<span class='float-left ui-icon ui-icon-minusthick'></span>").end().find( ".portlet-content" );
  //$( ".portlet-header .ui-icon" ).click(function() {
			//$( this ).toggleClass( "ui-icon-minusthick" ).toggleClass( "ui-icon-plusthick" );
			//$( this ).parents( ".portlet:first" ).find( ".portlet-content" ).toggle();
		//});

  $( ".workspace" ).disableSelection();
});

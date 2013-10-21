# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  # enable chosen js
  $('.chosen-select').chosen(
    search_contains: true,
    no_results_text: 'No results matched',
    placeholder_text_multiple: "选择归属栏目",
    width: "220px"
  );

$(".my_select_box").chosen(
	search_contains: true,
    disable_search_threshold: 10,
    no_results_text: "Oops, nothing found!",
    width: "95%"
  );

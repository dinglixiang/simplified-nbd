// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


  $(".my_select_box").chosen(
  	allow_single_deselect: true
    search_contains: true,
    disable_search_threshold: 10,
    placeholder_text_multiple: "选择收件人(可多选)",
    no_results_text: "未找到该联系人！",
    width: "100%"
  );
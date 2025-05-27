$(document).ready(function () {
  $("#btn-expan").click(function () {
    $("expan").css("display", "inline");
  });

  $("#btn-place").click(function () {
    $("placename").css("background-color", "#fdebd0");
  });

  $("#btn-persname").click(function () {
    $("persname").css("background-color", "#ffb3b3");
  });

  $("#btn-org").click(function () {
    $("orgname").css("background-color", "#99ccff");
  });

  $("#btn-cite").click(function () {
    $("quote").css("background-color", "#ffff80");
  });


  $("#btn-hide").click(function () {
    $("expan").hide();
    $("placename").css("background-color", "#fff");
    $("quote").css("background-color", "#fff");
    $("orgname").css("background-color", "#fff");
    $("persname").css("background-color", "#fff");
  });
});

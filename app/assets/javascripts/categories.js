

$(function(){

  // $(".category__parent").hide(); 
  $(".category__child").hide(); 
  $(".category__grandchild").hide(); 


  // $(".category--header").hover(
  //   function () {
  //     $(this).append($(".category__parent"));
  //     $(".category__parent").show(); 
  //   },
  //   function () {
  //     $(".category__parent").hide();
  //   }
  // );
  // $(".category__parent").hover(
  //   function () {
  //     $(".category__child").show(); 
  //     $(this).append($(".category__child"));
  //   },
  //   function () {
  //     $(".category__child").hide();
  //   }
  // );

  $(".category__parent").hover(
    function () {
      var idname = $(this).attr('id');
      console.log(idname);
      $("#child--"+idname).show(); 
      $(this).append($("#child--"+idname));
    },
    function () {
      $(".category__child").hide(); 
    }
  );

  $(".category__child").hover(
    function () {
      $(".category__grandchild").show(); 
      $(this).append($(".category__grandchild"));
    },
    function () {
      $(".category__grandchild").hide();
    }
  );
 
});
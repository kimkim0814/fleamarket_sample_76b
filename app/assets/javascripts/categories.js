
$(function(){

  $(".category__parent").hide(); 
  $(".category__child").hide(); 
  $(".category__grandchild").hide(); 

  $(".left-box--first").hover(
    function () {
      $(".category__parent").show(); 
    },
    function () {
      $(".category__parent").hide();
    }
  );

  // $(".category__parent").hover(
  //   function () {
  //     $(".category__child").show(); 
  //     // $(this).append($(".category__child"));
  //   },
  //   function () {
  //     $(".category__child").hide();
  //   }
  // );

  $(".category__parent").hover(
    function () {
      var idname = $(this).attr('id');
      // console.log(idname);
      
      $(".child--"+idname).show(); 
    },
    function () {
      $(".category__child").hide(); 
    }
  );

  $(".category__child").hover(
    function () {
      var parent_id = $(this).parents('.category__parent').attr('id');
      var child_id = $(this).attr('id');
      console.log(child_id);
      
      $(".grandchild--"+parent_id+"/"+child_id).show(); 
    },
    function () {
      $(".category__grandchild").hide();
    }
  );
 
});